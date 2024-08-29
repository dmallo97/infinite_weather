import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:infinite_weather/features/location/domain/model/weather_conditions_model.dart';
import 'package:infinite_weather/features/location/domain/repository/location_weather_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCurrentWeatherUseCase {
  final LocationWeatherRepository _locationWeatherRepository;

  GetCurrentWeatherUseCase(this._locationWeatherRepository);

  Future<WeatherConditionsModel> getCurrentLocationWeather() async {
    final currentPosition = await _determinePosition();
    return _locationWeatherRepository.getCoordinatesWeatherConditions(
      latitude: currentPosition.latitude,
      longitude: currentPosition.longitude,
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();
  }
}
