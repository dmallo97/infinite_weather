import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_conditions_model.freezed.dart';

@freezed
class WeatherConditionsModel with _$WeatherConditionsModel {
  const factory WeatherConditionsModel({
    String? location,
    required WeatherCondition weatherCondition,
    required String description,
    required bool isDayTime,
    num? temperature,
    num? feelsLike,
    num? windSpeed,
    num? windGusts,
    String? windDirection,
    int? uvIndex,
    String? uvIndexLabel,
    num? visibility,
    num? humidity,
    num? rainProbability,
  }) = _WeatherConditionsModel;
}

enum WeatherCondition {
  clearDay,
  clearNight,
  partlyCloudyDay,
  partlyCloudyNight,
  cloudy,
  rainy,
  partlyCloudyRainingDay,
  partlyCloudySnowingDay,
  partlyCloudyRainingNight,
  partlyCloudySnowingNight,
  foggy,
  snowy,
  sunnySnowing,
  icy,
  windy,
  stormyNight,
  stormyDay,
  stormy,
  unknown,
}
