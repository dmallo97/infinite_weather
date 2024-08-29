part of 'summary_bloc.dart';

@freezed
class SummaryEvent with _$SummaryEvent {
  const factory SummaryEvent.fetchCurrentWeather() = _FetchCurrentWeather;
  const factory SummaryEvent.loadSavedLocations() = _LoadSavedLocations;
  const factory SummaryEvent.saveLocation(LocationMetadataModel locationData) = _SaveLocation;
}
