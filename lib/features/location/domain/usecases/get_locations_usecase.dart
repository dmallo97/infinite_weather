import 'package:infinite_weather/features/location/domain/model/location_metadata_model.dart';
import 'package:infinite_weather/features/location/domain/repository/location_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLocationsUseCase {
  final LocationRepository _locationRepository;

  GetLocationsUseCase(this._locationRepository);

  Future<List<LocationMetadataModel>> getLocations(String text, {int page = 1}) async {
    return _locationRepository.getLocations(text, page: page);
  }
}
