import 'package:infinite_weather/features/location/domain/model/location_metadata_model.dart';

abstract class LocationRepository {
  Future<List<LocationMetadataModel>> getLocations(String location, {int page = 1});
  Future<LocationMetadataModel> getLocationMetadataWithCoords({required String latitude, required String longitude});
}
