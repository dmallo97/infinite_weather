part of 'summary_bloc.dart';

@freezed
class SummaryState with _$SummaryState {
  const factory SummaryState({
    @Default(Loading()) ResultState<WeatherConditionsModel> fetchCurrentLocationWeatherResult,
    @Default(Initial()) ResultState<List<LocationMetadataModel>> loadSavedLocationsResult,
    @Default(Initial()) ResultState<bool> saveLocationResult,
  }) = _SummaryState;
}
