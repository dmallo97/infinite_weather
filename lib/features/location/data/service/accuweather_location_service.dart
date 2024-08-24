import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'accuweather_location_service.g.dart';

@injectable
@RestApi()
abstract class AccuWeatherLocationService {
  @factoryMethod
  factory AccuWeatherLocationService(@Named('accuWeatherDataService') Dio dio) = _AccuWeatherLocationService;

  @GET('locations/v1/cities/geoposition/search')
  Future<dynamic> fetchLocationKeyWithCoords({
    @Query('q') required String latitudeLongitude,
    @Query('language') String? language,
    @Query('details') bool? fullDetails,
    @Query('toplevel') bool? topLevel,
  });

  @GET('locations/v1/search')
  Future<dynamic> fetchLocationKeyWithTextSearch({
    @Query('q') required String text,
    @Query('language') String? language,
    @Query('details') bool? fullDetails,
    @Query('offset') int? topLevel,
  });
}
