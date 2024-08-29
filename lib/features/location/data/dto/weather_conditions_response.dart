import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_weather/core/common/base_dto_response.dart';
import 'package:infinite_weather/features/location/domain/model/weather_conditions_model.dart';

part 'weather_conditions_response.freezed.dart';
part 'weather_conditions_response.g.dart';

@freezed
class WeatherConditionsResponse with _$WeatherConditionsResponse implements BaseDtoResponse<WeatherConditionsModel> {
  const WeatherConditionsResponse._();
  const factory WeatherConditionsResponse({
    required String LocalObservationDateTime,
    required String WeatherText,
    required bool HasPrecipitation,
    required bool IsDayTime,
    required Map<String, dynamic> Temperature,
    Map<String, dynamic>? RealFeelTemperature,
    int? RelativeHumidity,
    Map<String, dynamic>? DewPoint,
    Map<String, dynamic>? Wind,
    Map<String, dynamic>? WindGust,
    int? UVIndex,
    String? UVIndexText,
    Map<String, dynamic>? Visibility,
    Map<String, dynamic>? PrecipitationSummary,
  }) = _WeatherConditionsResponse;

  factory WeatherConditionsResponse.fromJson(Map<String, dynamic> json) => _$WeatherConditionsResponseFromJson(json);

  @override
  WeatherConditionsModel toDomainModel() {
    return WeatherConditionsModel(
      weatherCondition: WeatherText.toWeatherCondition(),
      description: WeatherText,
      temperature: Temperature['Metric']['Value'],
      feelsLike: RealFeelTemperature?['Metric']['Value'],
      humidity: RelativeHumidity,
      isDayTime: IsDayTime,
      windSpeed: Wind?['Speed']['Metric']['Value'],
      windDirection: Wind?['Direction']['English'],
      windGusts: WindGust?['Speed']['Metric']['Value'],
      uvIndex: UVIndex,
      uvIndexLabel: UVIndexText,
      visibility: Visibility?['Metric']['Value'],
      rainProbability: PrecipitationSummary?['Precipitation']['Metric']['Value'],
      observationTime: DateTime.parse(LocalObservationDateTime),
    );
  }
}

extension on String {
  WeatherCondition toWeatherCondition({bool isDayTime = true}) {
    switch (toLowerCase()) {
      case 'sunny' || 'mostly sunny':
        return WeatherCondition.clearDay;
      case 'partly sunny' || 'hazy sunshine':
        return WeatherCondition.partlyCloudyDay;
      case 'intermittent clouds' || 'mostly cloudy':
        if (isDayTime) {
          return WeatherCondition.partlyCloudyDay;
        } else {
          return WeatherCondition.partlyCloudyNight;
        }
      case 'cloudy' || 'dreary (overcast)':
        return WeatherCondition.cloudy;
      case 'fog':
        return WeatherCondition.foggy;
      case 'showers' || 'rain':
        return WeatherCondition.rainy;
      case 'partly sunny w/ showers':
        return WeatherCondition.partlyCloudyRainingDay;
      case 'mostly cloudy w/ showers':
        if (isDayTime) {
          return WeatherCondition.partlyCloudyRainingDay;
        } else {
          return WeatherCondition.partlyCloudyRainingNight;
        }
      case 'flurries' || 'snow' || 'sleet' || 'freezing rain' || 'rain and snow':
        return WeatherCondition.snowy;
      case 'partly sunny w/ flurries':
        return WeatherCondition.partlyCloudySnowingDay;
      case 'mostly cloudy w/ flurries' || 'mostly cloudy w/ snow':
        if (isDayTime) {
          return WeatherCondition.partlyCloudySnowingDay;
        } else {
          return WeatherCondition.partlyCloudySnowingNight;
        }
      case 'ice':
        return WeatherCondition.icy;
      case 'windy':
        return WeatherCondition.windy;
      case 'clear' || 'mostly clear':
        return WeatherCondition.clearNight;
      case 'partly cloudy':
        return WeatherCondition.partlyCloudyNight;
      case 'hazy moonlight':
        return WeatherCondition.partlyCloudyNight;
      case 'partly cloudy w/ showers':
        return WeatherCondition.partlyCloudyRainingNight;
      case 'partly cloudy w/ t-storms':
        return WeatherCondition.stormyNight;
      case 't-storms':
        return WeatherCondition.stormy;
      case 'partly sunny w/ t-storms':
        return WeatherCondition.stormyDay;
      case 'mostly cloudy w/ t-storms':
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
