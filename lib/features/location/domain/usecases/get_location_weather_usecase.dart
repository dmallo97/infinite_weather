import 'package:infinite_weather/features/location/domain/model/location_metadata_model.dart';
import 'package:infinite_weather/features/location/domain/model/weather_conditions_model.dart';
import 'package:infinite_weather/features/location/domain/repository/location_weather_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLocationWeatherUseCase {
  final LocationWeatherRepository _locationWeatherRepository;

  GetLocationWeatherUseCase(this._locationWeatherRepository);

  Future<WeatherConditionsModel?> getLocationWeather(LocationMetadataModel locationMetadataModel) async {
    final result = await _locationWeatherRepository.getLocationWeatherConditions(locationMetadataModel.key);
    return result.firstOrNull;
  }
}
