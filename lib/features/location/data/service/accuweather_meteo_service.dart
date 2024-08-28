import 'package:dio/dio.dart';
import 'package:infinite_weather/features/location/data/dto/weather_conditions_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'accuweather_meteo_service.g.dart';

@injectable
@RestApi()
abstract class AccuWeatherMeteoService {
  @factoryMethod
  factory AccuWeatherMeteoService(@Named('accuWeatherDataService') Dio dio) = _AccuWeatherMeteoService;

  @GET('currentconditions/v1/{locationKey}')
  Future<List<WeatherConditionsResponse>> fetchLocationKeyCurrentConditions({
    @Path('locationKey') required String locationKey,
    @Query('language') String? language,
    @Query('details') bool? fullDetails,
  });

  @GET('forecasts/v1/daily/5day/{locationKey}')
  Future<dynamic> fetchLocationKey5DayForecast({
    @Path('locationKey') required String locationKey,
    @Query('language') String? language,
    @Query('details') bool? fullDetails,
    @Query('metric') bool? metric,
  });
}
