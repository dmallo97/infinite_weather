// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_conditions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherConditionsResponseImpl _$$WeatherConditionsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherConditionsResponseImpl(
      LocalObservationDateTime: json['LocalObservationDateTime'] as String,
      WeatherText: json['WeatherText'] as String,
      HasPrecipitation: json['HasPrecipitation'] as bool,
      IsDayTime: json['IsDayTime'] as bool,
      Temperature: json['Temperature'] as Map<String, dynamic>,
      RealFeelTemperature: json['RealFeelTemperature'] as Map<String, dynamic>?,
      RelativeHumidity: (json['RelativeHumidity'] as num?)?.toInt(),
      DewPoint: json['DewPoint'] as Map<String, dynamic>?,
      Wind: json['Wind'] as Map<String, dynamic>?,
      WindGust: json['WindGust'] as Map<String, dynamic>?,
      UVIndex: (json['UVIndex'] as num?)?.toInt(),
      UVIndexText: json['UVIndexText'] as String?,
      Visibility: json['Visibility'] as Map<String, dynamic>?,
      PrecipitationSummary:
          json['PrecipitationSummary'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$WeatherConditionsResponseImplToJson(
        _$WeatherConditionsResponseImpl instance) =>
    <String, dynamic>{
      'LocalObservationDateTime': instance.LocalObservationDateTime,
      'WeatherText': instance.WeatherText,
      'HasPrecipitation': instance.HasPrecipitation,
      'IsDayTime': instance.IsDayTime,
      'Temperature': instance.Temperature,
      'RealFeelTemperature': instance.RealFeelTemperature,
      'RelativeHumidity': instance.RelativeHumidity,
      'DewPoint': instance.DewPoint,
      'Wind': instance.Wind,
      'WindGust': instance.WindGust,
      'UVIndex': instance.UVIndex,
      'UVIndexText': instance.UVIndexText,
      'Visibility': instance.Visibility,
      'PrecipitationSummary': instance.PrecipitationSummary,
    };
