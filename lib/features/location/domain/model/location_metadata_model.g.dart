// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_metadata_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationMetadataModelImpl _$$LocationMetadataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationMetadataModelImpl(
      key: json['key'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      rank: (json['rank'] as num).toInt(),
      region: json['region'] as String,
      country: json['country'] as String,
      adminArea: json['adminArea'] as String,
      timezoneOffset: json['timezoneOffset'] as num,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$LocationMetadataModelImplToJson(
        _$LocationMetadataModelImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'type': instance.type,
      'rank': instance.rank,
      'region': instance.region,
      'country': instance.country,
      'adminArea': instance.adminArea,
      'timezoneOffset': instance.timezoneOffset,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
