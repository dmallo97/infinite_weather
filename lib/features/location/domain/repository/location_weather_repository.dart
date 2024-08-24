import 'package:infinite_weather/features/location/domain/model/weather_conditions_model.dart';

abstract class LocationWeatherRepository {
  Future<WeatherConditionsModel> getLocationWeatherConditions(String location);
  Future<WeatherConditionsModel> getCoordinatesWeatherConditions({required double latitude, required double longitude});
}
