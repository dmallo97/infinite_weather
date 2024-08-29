import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_weather/core/common/result_state.dart';
import 'package:infinite_weather/core/exceptions/custom_exception.dart';
import 'package:infinite_weather/features/location/domain/model/location_metadata_model.dart';
import 'package:infinite_weather/features/location/domain/model/weather_conditions_model.dart';
import 'package:infinite_weather/features/location/domain/usecases/get_location_weather_usecase.dart';
import 'package:injectable/injectable.dart';

part 'location_details_event.dart';
part 'location_details_state.dart';
part 'location_details_bloc.freezed.dart';

@injectable
class LocationDetailsBloc extends Bloc<LocationDetailsEvent, LocationDetailsState> {
  final GetLocationWeatherUseCase _getLocationWeatherUseCase;

  LocationDetailsBloc(this._getLocationWeatherUseCase) : super(const LocationDetailsState()) {
    on<_GetLocationWeather>(_getLocationWeather);
  }

  void _getLocationWeather(_GetLocationWeather event, Emitter<LocationDetailsState> emit) async {
    try {
      emit(state.copyWith(fetchLocationWeatherConditionResult: const Loading()));
      final locationWeather = await _getLocationWeatherUseCase.getLocationWeather(event.locationMetadata);
      emit(state.copyWith(
        fetchLocationWeatherConditionResult: Data(data: locationWeather),
      ));
    } on CustomException catch (e) {
      emit(state.copyWith(fetchLocationWeatherConditionResult: Error(error: e)));
    }
  }
}
