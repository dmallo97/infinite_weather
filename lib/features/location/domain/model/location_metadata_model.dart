import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_metadata_model.freezed.dart';

@freezed
class LocationMetadataModel with _$LocationMetadataModel {
  const factory LocationMetadataModel({
    required String key,
    required String name,
    required String type,
    required int rank,
    required String region,
    required String country,
    required String adminArea,
    required num timezoneOffset,
    required double latitude,
    required double longitude,
  }) = _LocationMetadataModel;
}
