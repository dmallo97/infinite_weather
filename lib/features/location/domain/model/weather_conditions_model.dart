import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_conditions_model.freezed.dart';

@freezed
class WeatherConditionsModel with _$WeatherConditionsModel {
  const factory WeatherConditionsModel({
    required String location,
    required WeatherCondition weatherCondition,
    required String description,
    num? temperature,
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
  foggy,
  snowy,
  sunnySnowing,
}
