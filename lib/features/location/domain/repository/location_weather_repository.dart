import 'package:infinite_weather/features/location/domain/model/weather_conditions_model.dart';

abstract class LocationWeatherRepository {
  Future<List<WeatherConditionsModel>> getLocationWeatherConditions(String locationKey);
  Future<WeatherConditionsModel> getCoordinatesWeatherConditions({required double latitude, required double longitude});
}
