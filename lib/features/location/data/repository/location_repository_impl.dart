import 'package:dio/dio.dart';
import 'package:infinite_weather/core/exceptions/data_exception.dart';
import 'package:infinite_weather/features/location/data/service/accuweather_location_service.dart';
import 'package:infinite_weather/features/location/domain/model/location_metadata_model.dart';
import 'package:infinite_weather/features/location/domain/repository/location_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LocationRepository)
class LocationRepositoryImpl implements LocationRepository {
  final AccuWeatherLocationService _accuWeatherLocationService;

  LocationRepositoryImpl(this._accuWeatherLocationService);

  @override
  Future<List<LocationMetadataModel>> getLocations(String location, {int page = 1}) async {
    try {
      final response = await _accuWeatherLocationService.fetchLocationKeyWithTextSearch(text: location, offset: page - 1);
      return response.map((e) => e.toDomainModel()).toList();
    } on DioException catch (e) {
      throw DataException(type: e, message: e.message);
    } catch (e) {
      throw DataException(type: e);
    }
  }
  
  @override
  Future<LocationMetadataModel> getLocationMetadataWithCoords({required String latitude, required String longitude}) async {
    try {
      final response =
          await _accuWeatherLocationService.fetchLocationKeyWithCoords(latitudeLongitude: '$latitude,$longitude');
      return response.toDomainModel();
    } on DioException catch (e) {
      throw DataException(type: e, message: e.message);
    } catch (e) {
      throw DataException(type: e);
    }
  }
}
