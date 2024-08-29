part of 'location_details_bloc.dart';

@freezed
class LocationDetailsEvent with _$LocationDetailsEvent {
  const factory LocationDetailsEvent.getLocationWeather(LocationMetadataModel locationMetadata) = _GetLocationWeather;
}
