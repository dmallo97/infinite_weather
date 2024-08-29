import 'package:dio/dio.dart';

class ConfigurationParameters {
  static String apiBaseURL = 'http://dataservice.accuweather.com/';
  static const apiKey = 'Riqe63GUCguIvEC2A1cpjRIiXgZCPEx4';
  static const prefsLocationsKey = 'locations';
  static BaseOptions dioAccuWeatherClientBaseOptionsConfig = BaseOptions(
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
    baseUrl: apiBaseURL,
  );
}
