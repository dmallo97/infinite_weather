part of 'location_details_bloc.dart';

@freezed
class LocationDetailsState with _$LocationDetailsState {
  const factory LocationDetailsState({
    @Default(Loading()) ResultState<WeatherConditionsModel?> fetchLocationWeatherConditionResult,
  }) = _LocationDetailsState;
}

