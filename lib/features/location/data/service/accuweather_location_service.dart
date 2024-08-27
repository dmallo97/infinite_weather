import 'package:dio/dio.dart';
import 'package:infinite_weather/features/location/data/dto/location_metadata_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'accuweather_location_service.g.dart';

@injectable
@RestApi()
abstract class AccuWeatherLocationService {
  @factoryMethod
  factory AccuWeatherLocationService(@Named('accuWeatherDataService') Dio dio) = _AccuWeatherLocationService;

  @GET('locations/v1/cities/geoposition/search')
  Future<LocationMetadataResponse> fetchLocationKeyWithCoords({
    @Query('q') required String latitudeLongitude,
    @Query('language') String? language,
    @Query('details') bool? fullDetails,
    @Query('toplevel') bool? topLevel,
  });

  @GET('locations/v1/search')
  Future<List<LocationMetadataResponse>> fetchLocationKeyWithTextSearch({
    @Query('q') required String text,
    @Query('language') String? language,
    @Query('details') bool? fullDetails,
    @Query('offset') int offset = 0,
  });
}
