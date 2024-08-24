part of 'summary_bloc.dart';

@freezed
class SummaryState with _$SummaryState {
  const factory SummaryState({
    @Default(Loading()) ResultState<WeatherConditionsModel> fetchCurrentLocationWeather,
  }) = _SummaryState;
}
