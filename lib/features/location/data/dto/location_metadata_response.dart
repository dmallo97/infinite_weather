import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_weather/core/common/base_dto_response.dart';
import 'package:infinite_weather/features/location/domain/model/location_metadata_model.dart';

part 'location_metadata_response.freezed.dart';
part 'location_metadata_response.g.dart';

@freezed
class LocationMetadataResponse with _$LocationMetadataResponse implements BaseDtoResponse<LocationMetadataModel> {
  const LocationMetadataResponse._();
  const factory LocationMetadataResponse({
    required int Version,
    required String Key,
    required String Type,
    required int Rank,
    required String EnglishName,
    required String PrimaryPostalCode,
    required Map<String, dynamic> Region,
    required Map<String, dynamic> Country,
    required Map<String, dynamic> AdministrativeArea,
    required Map<String, dynamic> TimeZone,
    required Map<String, dynamic> GeoPosition,
    Map<String, dynamic>? ParentCity,
  }) = _LocationMetadataResponse;

  factory LocationMetadataResponse.fromJson(Map<String, dynamic> json) => _$LocationMetadataResponseFromJson(json);

  @override
  LocationMetadataModel toDomainModel() {
    return LocationMetadataModel(
      key: Key,
      name: EnglishName,
      type: this.Type,
      rank: Rank,
      region: Region['EnglishName'],
      country: Country['EnglishName'],
      adminArea: AdministrativeArea['EnglishName'],
      timezone: TimeZone['Name'],
      latitude: GeoPosition['Latitude'],
      longitude: GeoPosition['Longitude'],
    );
  }
}
