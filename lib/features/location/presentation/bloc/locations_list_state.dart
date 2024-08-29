part of 'locations_list_bloc.dart';

@freezed
class LocationsListState with _$LocationsListState {
  const factory LocationsListState({
    @Default(Initial()) ResultState<List<LocationMetadataModel>> fetchLocationsResult,
    String? searchText,
    @Default(1) int currentPage,
    @Default(0) int itemCount,
  }) = _LocationsListState;
}
