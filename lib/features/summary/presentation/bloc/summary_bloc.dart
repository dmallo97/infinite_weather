import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_weather/config/config_params.dart';
import 'package:infinite_weather/core/common/result_state.dart';
import 'package:infinite_weather/core/exceptions/domain_exception.dart';
import 'package:infinite_weather/features/location/domain/model/location_metadata_model.dart';
import 'package:infinite_weather/features/location/domain/model/weather_conditions_model.dart';
import 'package:infinite_weather/features/summary/domain/usecases/get_current_weather_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'summary_event.dart';
part 'summary_state.dart';
part 'summary_bloc.freezed.dart';

@singleton
class SummaryBloc extends Bloc<SummaryEvent, SummaryState> {
  final GetCurrentWeatherUseCase _getCurrentWeatherUseCase;
  final SharedPreferences _prefs;

  SummaryBloc(this._getCurrentWeatherUseCase, this._prefs) : super(const SummaryState()) {
    on<_FetchCurrentWeather>(_fetchCurrentWeather);
    on<_SaveLocation>(_saveLocation);
    on<_LoadSavedLocations>(_loadSavedLocations);
    add(const _FetchCurrentWeather());
    //add(const _LoadSavedLocations()); TODO
  }

  void _saveLocation(_SaveLocation event, Emitter<SummaryState> emitter) async {
    var savedLocations = _prefs.getStringList(ConfigurationParameters.prefsLocationsKey);
    if (savedLocations != null) {
      savedLocations.add(jsonEncode(event.locationData.toJson()));
      final successfulResult = await _prefs.setStringList(ConfigurationParameters.prefsLocationsKey, savedLocations);
      if (successfulResult) {
        emitter(state.copyWith(saveLocationResult: const Data(data: true)));
        add(const _LoadSavedLocations());
      } else {
        emitter(state.copyWith(saveLocationResult: const Data(data: false)));
      }
    } else {
      savedLocations = [jsonEncode(event.locationData.toJson())];
    }
    final successfulResult = await _prefs.setStringList(ConfigurationParameters.prefsLocationsKey, savedLocations);
    if (successfulResult) {
      emitter(state.copyWith(saveLocationResult: const Data(data: true)));
      add(const _LoadSavedLocations());
    } else {
      emitter(state.copyWith(saveLocationResult: const Data(data: false)));
    }
  }

  void _loadSavedLocations(_LoadSavedLocations event, Emitter<SummaryState> emitter) {
    final savedLocations = _prefs.getStringList(ConfigurationParameters.prefsLocationsKey);
    if (savedLocations == null) return;
    emitter(state.copyWith(
        loadSavedLocationsResult: Data(
            data: savedLocations
                .map<LocationMetadataModel>(
                    (savedLocation) => LocationMetadataModel.fromJson(jsonDecode(savedLocation)))
                .toList())));
  }

  void _fetchCurrentWeather(_FetchCurrentWeather event, Emitter<SummaryState> emitter) async {
    try {
      emitter(const SummaryState(fetchCurrentLocationWeatherResult: Loading()));
      final currentConditions = await _getCurrentWeatherUseCase.getCurrentLocationWeather();
      emitter(SummaryState(fetchCurrentLocationWeatherResult: Data(data: currentConditions)));
    } on DomainException catch (e) {
      emitter(SummaryState(fetchCurrentLocationWeatherResult: Error(error: e)));
    }
  }
}
