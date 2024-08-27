import 'package:flutter/cupertino.dart';
import 'package:infinite_weather/features/location/domain/model/weather_conditions_model.dart';

class WeatherIcon extends StatelessWidget {
  final WeatherCondition condition;
  const WeatherIcon({super.key, required this.condition});

  IconData getWeatherIcon() {
    switch (condition) {
      case WeatherCondition.clearDay:
        return CupertinoIcons.sun_max;
      case WeatherCondition.clearNight:
        return CupertinoIcons.moon;
      case WeatherCondition.partlyCloudyDay:
        return CupertinoIcons.cloud_sun;
      case WeatherCondition.partlyCloudyNight:
        return CupertinoIcons.cloud_moon;
      case WeatherCondition.cloudy:
        return CupertinoIcons.cloud;
      case WeatherCondition.rainy:
        return CupertinoIcons.cloud_rain;
      case WeatherCondition.foggy:
        return CupertinoIcons.cloud_fog;
      case WeatherCondition.snowy ||
            WeatherCondition.partlyCloudySnowingDay ||
            WeatherCondition.partlyCloudySnowingNight:
        return CupertinoIcons.cloud_snow;
      case WeatherCondition.partlyCloudyRainingDay:
        return CupertinoIcons.cloud_sun_rain;
      case WeatherCondition.partlyCloudyRainingNight:
        return CupertinoIcons.cloud_moon_rain;
      case WeatherCondition.icy || WeatherCondition.sunnySnowing:
        return CupertinoIcons.snow;
      case WeatherCondition.windy:
        return CupertinoIcons.wind;
      case WeatherCondition.stormyNight:
        return CupertinoIcons.cloud_moon_bolt;
      case WeatherCondition.stormyDay:
        return CupertinoIcons.cloud_sun_bolt;
      case WeatherCondition.stormy:
        return CupertinoIcons.cloud_bolt;
      default:
        return CupertinoIcons.question_circle;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Icon(getWeatherIcon(), size: 40);
  }
}
