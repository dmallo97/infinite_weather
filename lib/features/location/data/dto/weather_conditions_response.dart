import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_weather/core/common/base_dto_response.dart';
import 'package:infinite_weather/features/location/domain/model/weather_conditions_model.dart';

part 'weather_conditions_response.freezed.dart';
part 'weather_conditions_response.g.dart';

@freezed
class WeatherConditionsResponse with _$WeatherConditionsResponse implements BaseDtoResponse<WeatherConditionsModel> {
  const WeatherConditionsResponse._();
  const factory WeatherConditionsResponse({
    required String WeatherText,
    required bool HasPrecipitation,
    required bool IsDayTime,
    required Map<String, dynamic> Temperature,
    required Map<String, dynamic> RealFeelTemperature,
    required int RelativeHumidity,
    required Map<String, dynamic> DewPoint,
    required Map<String, dynamic> Wind,
    required Map<String, dynamic> WindGust,
    required int UVIndex,
    required String UVIndexText,
    required Map<String, dynamic> Visibility,
    required Map<String, dynamic> PrecipitationSummary,
  }) = _WeatherConditionsResponse;

  factory WeatherConditionsResponse.fromJson(Map<String, dynamic> json) => _$WeatherConditionsResponseFromJson(json);

  @override
  WeatherConditionsModel toDomainModel() {
    return WeatherConditionsModel(
      weatherCondition: WeatherText.toWeatherCondition(),
      description: WeatherText,
      temperature: Temperature['Metric']['Value'],
      feelsLike: RealFeelTemperature['Metric']['Value'],
      humidity: RelativeHumidity,
      isDayTime: IsDayTime,
      windSpeed: Wind['Speed']['Metric']['Value'],
      windDirection: Wind['Direction']['English'],
      windGusts: WindGust['Speed']['Metric']['Value'],
      uvIndex: UVIndex,
      uvIndexLabel: UVIndexText,
      visibility: Visibility['Metric']['Value'],
      rainProbability: PrecipitationSummary['Precipitation']['Metric']['Value'],
    );
  }
}

extension on String {
  WeatherCondition toWeatherCondition({bool isDayTime = true}) {
    switch (this) {
      case 'Sunny' || 'Mostly Sunny':
        return WeatherCondition.clearDay;
      case 'Partly Sunny' || 'Hazy Sunshine':
        return WeatherCondition.partlyCloudyDay;
      case 'Intermittent Clouds' || 'Mostly Cloudy':
        if (isDayTime) {
          return WeatherCondition.partlyCloudyDay;
        } else {
          return WeatherCondition.partlyCloudyNight;
        }
      case 'Cloudy' || 'Dreary (Overcast)':
        return WeatherCondition.cloudy;
      case 'Fog':
        return WeatherCondition.foggy;
      case 'Showers' || 'Rain':
        return WeatherCondition.rainy;
      case 'Partly Sunny w/ Showers':
        return WeatherCondition.partlyCloudyRainingDay;
      case 'Mostly Cloudy w/ Showers':
        if (isDayTime) {
          return WeatherCondition.partlyCloudyRainingDay;
        } else {
          return WeatherCondition.partlyCloudyRainingNight;
        }
      case 'Flurries' || 'Snow' || 'Sleet' || 'Freezing Rain' || 'Rain and Snow':
        return WeatherCondition.snowy;
      case 'Partly Sunny w/ Flurries':
        return WeatherCondition.partlyCloudySnowingDay;
      case 'Mostly Cloudy w/ Flurries' || 'Mostly Cloudy w/ Snow':
        if (isDayTime) {
          return WeatherCondition.partlyCloudySnowingDay;
        } else {
          return WeatherCondition.partlyCloudySnowingNight;
        }
      case 'Ice':
        return WeatherCondition.icy;
      case 'Windy':
        return WeatherCondition.windy;
      case 'Clear' || 'Mostly Clear':
        return WeatherCondition.clearNight;
      case 'Partly Cloudy':
        return WeatherCondition.partlyCloudyNight;
      case 'Hazy Moonlight':
        return WeatherCondition.partlyCloudyNight;
      case 'Partly Cloudy w/ Showers':
        return WeatherCondition.partlyCloudyRainingNight;
      case 'Partly Cloudy w/ T-Storms':
        return WeatherCondition.stormyNight;
      case 'T-Storms':
        return WeatherCondition.stormy;
      case 'Partly Sunny w/ T-Storms':
        return WeatherCondition.stormyDay;
      case 'Mostly Cloudy w/ T-Storms':
        if (isDayTime) {
          return WeatherCondition.stormyDay;
        } else {
          return WeatherCondition.stormyNight;
        }
      default:
        return WeatherCondition.unknown;
    }
  }
}
