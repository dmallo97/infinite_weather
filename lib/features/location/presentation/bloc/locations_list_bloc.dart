import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_weather/core/common/result_state.dart';
import 'package:infinite_weather/core/exceptions/domain_exception.dart';
import 'package:infinite_weather/features/location/domain/model/location_metadata_model.dart';
import 'package:infinite_weather/features/location/domain/usecases/get_locations_usecase.dart';
import 'package:injectable/injectable.dart';

part 'locations_list_event.dart';
part 'locations_list_state.dart';
part 'locations_list_bloc.freezed.dart';

@singleton
class LocationsListBloc extends Bloc<LocationsListEvent, LocationsListState> {
  final GetLocationsUseCase _getLocationsUseCase;

  LocationsListBloc(this._getLocationsUseCase) : super(const LocationsListState()) {
    on<_SearchLocations>(_searchLocations);
    on<_NextPage>(_searchNextPage);
    on<_PreviousPage>(_searchPreviousPage);
  }

  void _searchLocations(_SearchLocations event, Emitter<LocationsListState> emit) async {
    try {
      emit(state.copyWith(fetchLocationsResult: const Loading()));
      final locations = await _getLocationsUseCase.getLocations(event.text);
      emit(state.copyWith(
        fetchLocationsResult: Data(data: locations),
        itemCount: locations.length,
        currentPage: state.currentPage,
        searchText: event.text,
      ));
    } on DomainException catch (e) {
      emit(state.copyWith(fetchLocationsResult: Error(error: e)));
    }
  }

  void _searchNextPage(_NextPage event, Emitter<LocationsListState> emit) async {
    try {
      emit(state.copyWith(fetchLocationsResult: const Loading()));
      final locations = await _getLocationsUseCase.getLocations(state.searchText!, page: state.currentPage + 1);
      emit(state.copyWith(
        fetchLocationsResult: Data(data: locations),
        itemCount: locations.length,
        currentPage: state.currentPage + 1,
      ));
    } on DomainException catch (e) {
      emit(state.copyWith(fetchLocationsResult: Error(error: e)));
    }
  }

  void _searchPreviousPage(_PreviousPage event, Emitter<LocationsListState> emit) async {
    try {
      emit(state.copyWith(fetchLocationsResult: const Loading()));
      final locations = await _getLocationsUseCase.getLocations(state.searchText!, page: state.currentPage - 1);
      emit(state.copyWith(
        fetchLocationsResult: Data(data: locations),
        itemCount: locations.length,
        currentPage: state.currentPage - 1,
      ));
    } on DomainException catch (e) {
      emit(state.copyWith(fetchLocationsResult: Error(error: e)));
    }
  }
}
