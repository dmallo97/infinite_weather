// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_metadata_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationMetadataResponseImpl _$$LocationMetadataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationMetadataResponseImpl(
      Version: (json['Version'] as num).toInt(),
      Key: json['Key'] as String,
      Type: json['Type'] as String,
      Rank: (json['Rank'] as num).toInt(),
      EnglishName: json['EnglishName'] as String,
      PrimaryPostalCode: json['PrimaryPostalCode'] as String,
      Region: json['Region'] as Map<String, dynamic>,
      Country: json['Country'] as Map<String, dynamic>,
      AdministrativeArea: json['AdministrativeArea'] as Map<String, dynamic>,
      TimeZone: json['TimeZone'] as Map<String, dynamic>,
      GeoPosition: json['GeoPosition'] as Map<String, dynamic>,
      ParentCity: json['ParentCity'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$LocationMetadataResponseImplToJson(
        _$LocationMetadataResponseImpl instance) =>
    <String, dynamic>{
      'Version': instance.Version,
      'Key': instance.Key,
      'Type': instance.Type,
      'Rank': instance.Rank,
      'EnglishName': instance.EnglishName,
      'PrimaryPostalCode': instance.PrimaryPostalCode,
      'Region': instance.Region,
      'Country': instance.Country,
      'AdministrativeArea': instance.AdministrativeArea,
      'TimeZone': instance.TimeZone,
      'GeoPosition': instance.GeoPosition,
      'ParentCity': instance.ParentCity,
    };
