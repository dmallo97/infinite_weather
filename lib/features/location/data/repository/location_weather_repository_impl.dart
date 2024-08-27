import 'package:dio/dio.dart';
import 'package:infinite_weather/core/exceptions/data_exception.dart';
import 'package:infinite_weather/features/location/data/service/accuweather_location_service.dart';
import 'package:infinite_weather/features/location/data/service/accuweather_meteo_service.dart';
import 'package:infinite_weather/features/location/domain/model/weather_conditions_model.dart';
import 'package:infinite_weather/features/location/domain/repository/location_weather_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LocationWeatherRepository)
class LocationWeatherRepositoryImpl implements LocationWeatherRepository {
  final AccuWeatherLocationService _accuWeatherLocationService;
  final AccuWeatherMeteoService _accuWeatherMeteoService;

  LocationWeatherRepositoryImpl(this._accuWeatherLocationService, this._accuWeatherMeteoService);

  @override
  Future<WeatherConditionsModel> getCoordinatesWeatherConditions({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final response =
          await _accuWeatherLocationService.fetchLocationKeyWithCoords(latitudeLongitude: '$latitude,$longitude');
      final locationMetadata = response.toDomainModel();
      final conditionsResponse = await _accuWeatherMeteoService.fetchLocationKeyCurrentConditions(
        locationKey: locationMetadata.key,
        fullDetails: true,
      );
      return conditionsResponse.first.toDomainModel().copyWith(location: locationMetadata.name);
    } on DioException catch (e) {
      throw DataException(type: e, message: e.message);
    } catch (e) {
      throw DataException(type: e);
    }
  }

  @override
  Future<List<WeatherConditionsModel>> getLocationWeatherConditions(String location) async {
    try {
      final response = await _accuWeatherLocationService.fetchLocationKeyWithTextSearch(text: location);
      final locationsMetadata = response.map((e) => e.toDomainModel()).toList();
      List<WeatherConditionsModel> locationsWeatherCondition = [];

      for (var locationMetadata in locationsMetadata) {
        final conditionsResponse =
            await _accuWeatherMeteoService.fetchLocationKeyCurrentConditions(locationKey: locationMetadata.key);
        final currentConditions = conditionsResponse.first.toDomainModel().copyWith(location: locationMetadata.name);
        locationsWeatherCondition.add(currentConditions);
      }

      return locationsWeatherCondition;
    } on DioException catch (e) {
      throw DataException(type: e, message: e.message);
    } catch (e) {
      throw DataException(type: e);
    }
  }
}
