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
    required String timezone,
    required String latitude,
    required String longitude,
  }) = _LocationMetadataModel;
}
