part of 'locations_list_bloc.dart';

@freezed
class LocationsListEvent with _$LocationsListEvent {
  const factory LocationsListEvent.searchLocations(String text) = _SearchLocations;
  const factory LocationsListEvent.nextPage() = _NextPage;
  const factory LocationsListEvent.previousPage() = _PreviousPage;
}
