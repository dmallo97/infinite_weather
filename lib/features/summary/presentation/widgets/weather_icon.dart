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
      case WeatherCondition.snowy:
        return CupertinoIcons.cloud_snow;
      default:
        return CupertinoIcons.thermometer;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Icon(getWeatherIcon(), size: 40);
  }
}
