import 'package:infinite_weather/features/location/domain/model/weather_conditions_model.dart';
import 'package:infinite_weather/features/location/domain/repository/location_weather_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LocationWeatherRepository)
class LocationWeatherRepositoryImpl implements LocationWeatherRepository {
  @override
  Future<WeatherConditionsModel> getCoordinatesWeatherConditions({
    required double latitude,
    required double longitude,
  }) {
    // TODO: implement getCoordinatesWeatherConditions
    throw UnimplementedError();
  }

  @override
  Future<WeatherConditionsModel> getLocationWeatherConditions(String location) {
    // TODO: implement getLocationWeatherConditions
    throw UnimplementedError();
  }
}
