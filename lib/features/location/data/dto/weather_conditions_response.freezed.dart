// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_conditions_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherConditionsResponse _$WeatherConditionsResponseFromJson(
    Map<String, dynamic> json) {
  return _WeatherConditionsResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherConditionsResponse {
  String get WeatherText => throw _privateConstructorUsedError;
  bool get HasPrecipitation => throw _privateConstructorUsedError;
  bool get IsDayTime => throw _privateConstructorUsedError;
  Map<String, dynamic> get Temperature => throw _privateConstructorUsedError;
  Map<String, dynamic> get RealFeelTemperature =>
      throw _privateConstructorUsedError;
  int get RelativeHumidity => throw _privateConstructorUsedError;
  Map<String, dynamic> get DewPoint => throw _privateConstructorUsedError;
  Map<String, dynamic> get Wind => throw _privateConstructorUsedError;
  Map<String, dynamic> get WindGust => throw _privateConstructorUsedError;
  int get UVIndex => throw _privateConstructorUsedError;
  String get UVIndexText => throw _privateConstructorUsedError;
  Map<String, dynamic> get Visibility => throw _privateConstructorUsedError;
  Map<String, dynamic> get PrecipitationSummary =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherConditionsResponseCopyWith<WeatherConditionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionsResponseCopyWith<$Res> {
  factory $WeatherConditionsResponseCopyWith(WeatherConditionsResponse value,
          $Res Function(WeatherConditionsResponse) then) =
      _$WeatherConditionsResponseCopyWithImpl<$Res, WeatherConditionsResponse>;
  @useResult
  $Res call(
      {String WeatherText,
      bool HasPrecipitation,
      bool IsDayTime,
      Map<String, dynamic> Temperature,
      Map<String, dynamic> RealFeelTemperature,
      int RelativeHumidity,
      Map<String, dynamic> DewPoint,
      Map<String, dynamic> Wind,
      Map<String, dynamic> WindGust,
      int UVIndex,
      String UVIndexText,
      Map<String, dynamic> Visibility,
      Map<String, dynamic> PrecipitationSummary});
}

/// @nodoc
class _$WeatherConditionsResponseCopyWithImpl<$Res,
        $Val extends WeatherConditionsResponse>
    implements $WeatherConditionsResponseCopyWith<$Res> {
  _$WeatherConditionsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? WeatherText = null,
    Object? HasPrecipitation = null,
    Object? IsDayTime = null,
    Object? Temperature = null,
    Object? RealFeelTemperature = null,
    Object? RelativeHumidity = null,
    Object? DewPoint = null,
    Object? Wind = null,
    Object? WindGust = null,
    Object? UVIndex = null,
    Object? UVIndexText = null,
    Object? Visibility = null,
    Object? PrecipitationSummary = null,
  }) {
    return _then(_value.copyWith(
      WeatherText: null == WeatherText
          ? _value.WeatherText
          : WeatherText // ignore: cast_nullable_to_non_nullable
              as String,
      HasPrecipitation: null == HasPrecipitation
          ? _value.HasPrecipitation
          : HasPrecipitation // ignore: cast_nullable_to_non_nullable
              as bool,
      IsDayTime: null == IsDayTime
          ? _value.IsDayTime
          : IsDayTime // ignore: cast_nullable_to_non_nullable
              as bool,
      Temperature: null == Temperature
          ? _value.Temperature
          : Temperature // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      RealFeelTemperature: null == RealFeelTemperature
          ? _value.RealFeelTemperature
          : RealFeelTemperature // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      RelativeHumidity: null == RelativeHumidity
          ? _value.RelativeHumidity
          : RelativeHumidity // ignore: cast_nullable_to_non_nullable
              as int,
      DewPoint: null == DewPoint
          ? _value.DewPoint
          : DewPoint // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      Wind: null == Wind
          ? _value.Wind
          : Wind // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      WindGust: null == WindGust
          ? _value.WindGust
          : WindGust // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      UVIndex: null == UVIndex
          ? _value.UVIndex
          : UVIndex // ignore: cast_nullable_to_non_nullable
              as int,
      UVIndexText: null == UVIndexText
          ? _value.UVIndexText
          : UVIndexText // ignore: cast_nullable_to_non_nullable
              as String,
      Visibility: null == Visibility
          ? _value.Visibility
          : Visibility // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      PrecipitationSummary: null == PrecipitationSummary
          ? _value.PrecipitationSummary
          : PrecipitationSummary // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherConditionsResponseImplCopyWith<$Res>
    implements $WeatherConditionsResponseCopyWith<$Res> {
  factory _$$WeatherConditionsResponseImplCopyWith(
          _$WeatherConditionsResponseImpl value,
          $Res Function(_$WeatherConditionsResponseImpl) then) =
      __$$WeatherConditionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String WeatherText,
      bool HasPrecipitation,
      bool IsDayTime,
      Map<String, dynamic> Temperature,
      Map<String, dynamic> RealFeelTemperature,
      int RelativeHumidity,
      Map<String, dynamic> DewPoint,
      Map<String, dynamic> Wind,
      Map<String, dynamic> WindGust,
      int UVIndex,
      String UVIndexText,
      Map<String, dynamic> Visibility,
      Map<String, dynamic> PrecipitationSummary});
}

/// @nodoc
class __$$WeatherConditionsResponseImplCopyWithImpl<$Res>
    extends _$WeatherConditionsResponseCopyWithImpl<$Res,
        _$WeatherConditionsResponseImpl>
    implements _$$WeatherConditionsResponseImplCopyWith<$Res> {
  __$$WeatherConditionsResponseImplCopyWithImpl(
      _$WeatherConditionsResponseImpl _value,
      $Res Function(_$WeatherConditionsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? WeatherText = null,
    Object? HasPrecipitation = null,
    Object? IsDayTime = null,
    Object? Temperature = null,
    Object? RealFeelTemperature = null,
    Object? RelativeHumidity = null,
    Object? DewPoint = null,
    Object? Wind = null,
    Object? WindGust = null,
    Object? UVIndex = null,
    Object? UVIndexText = null,
    Object? Visibility = null,
    Object? PrecipitationSummary = null,
  }) {
    return _then(_$WeatherConditionsResponseImpl(
      WeatherText: null == WeatherText
          ? _value.WeatherText
          : WeatherText // ignore: cast_nullable_to_non_nullable
              as String,
      HasPrecipitation: null == HasPrecipitation
          ? _value.HasPrecipitation
          : HasPrecipitation // ignore: cast_nullable_to_non_nullable
              as bool,
      IsDayTime: null == IsDayTime
          ? _value.IsDayTime
          : IsDayTime // ignore: cast_nullable_to_non_nullable
              as bool,
      Temperature: null == Temperature
          ? _value._Temperature
          : Temperature // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      RealFeelTemperature: null == RealFeelTemperature
          ? _value._RealFeelTemperature
          : RealFeelTemperature // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      RelativeHumidity: null == RelativeHumidity
          ? _value.RelativeHumidity
          : RelativeHumidity // ignore: cast_nullable_to_non_nullable
              as int,
      DewPoint: null == DewPoint
          ? _value._DewPoint
          : DewPoint // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      Wind: null == Wind
          ? _value._Wind
          : Wind // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      WindGust: null == WindGust
          ? _value._WindGust
          : WindGust // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      UVIndex: null == UVIndex
          ? _value.UVIndex
          : UVIndex // ignore: cast_nullable_to_non_nullable
              as int,
      UVIndexText: null == UVIndexText
          ? _value.UVIndexText
          : UVIndexText // ignore: cast_nullable_to_non_nullable
              as String,
      Visibility: null == Visibility
          ? _value._Visibility
          : Visibility // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      PrecipitationSummary: null == PrecipitationSummary
          ? _value._PrecipitationSummary
          : PrecipitationSummary // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherConditionsResponseImpl extends _WeatherConditionsResponse {
  const _$WeatherConditionsResponseImpl(
      {required this.WeatherText,
      required this.HasPrecipitation,
      required this.IsDayTime,
      required final Map<String, dynamic> Temperature,
      required final Map<String, dynamic> RealFeelTemperature,
      required this.RelativeHumidity,
      required final Map<String, dynamic> DewPoint,
      required final Map<String, dynamic> Wind,
      required final Map<String, dynamic> WindGust,
      required this.UVIndex,
      required this.UVIndexText,
      required final Map<String, dynamic> Visibility,
      required final Map<String, dynamic> PrecipitationSummary})
      : _Temperature = Temperature,
        _RealFeelTemperature = RealFeelTemperature,
        _DewPoint = DewPoint,
        _Wind = Wind,
        _WindGust = WindGust,
        _Visibility = Visibility,
        _PrecipitationSummary = PrecipitationSummary,
        super._();

  factory _$WeatherConditionsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherConditionsResponseImplFromJson(json);

  @override
  final String WeatherText;
  @override
  final bool HasPrecipitation;
  @override
  final bool IsDayTime;
  final Map<String, dynamic> _Temperature;
  @override
  Map<String, dynamic> get Temperature {
    if (_Temperature is EqualUnmodifiableMapView) return _Temperature;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_Temperature);
  }

  final Map<String, dynamic> _RealFeelTemperature;
  @override
  Map<String, dynamic> get RealFeelTemperature {
    if (_RealFeelTemperature is EqualUnmodifiableMapView)
      return _RealFeelTemperature;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_RealFeelTemperature);
  }

  @override
  final int RelativeHumidity;
  final Map<String, dynamic> _DewPoint;
  @override
  Map<String, dynamic> get DewPoint {
    if (_DewPoint is EqualUnmodifiableMapView) return _DewPoint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_DewPoint);
  }

  final Map<String, dynamic> _Wind;
  @override
  Map<String, dynamic> get Wind {
    if (_Wind is EqualUnmodifiableMapView) return _Wind;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_Wind);
  }

  final Map<String, dynamic> _WindGust;
  @override
  Map<String, dynamic> get WindGust {
    if (_WindGust is EqualUnmodifiableMapView) return _WindGust;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_WindGust);
  }

  @override
  final int UVIndex;
  @override
  final String UVIndexText;
  final Map<String, dynamic> _Visibility;
  @override
  Map<String, dynamic> get Visibility {
    if (_Visibility is EqualUnmodifiableMapView) return _Visibility;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_Visibility);
  }

  final Map<String, dynamic> _PrecipitationSummary;
  @override
  Map<String, dynamic> get PrecipitationSummary {
    if (_PrecipitationSummary is EqualUnmodifiableMapView)
      return _PrecipitationSummary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_PrecipitationSummary);
  }

  @override
  String toString() {
    return 'WeatherConditionsResponse(WeatherText: $WeatherText, HasPrecipitation: $HasPrecipitation, IsDayTime: $IsDayTime, Temperature: $Temperature, RealFeelTemperature: $RealFeelTemperature, RelativeHumidity: $RelativeHumidity, DewPoint: $DewPoint, Wind: $Wind, WindGust: $WindGust, UVIndex: $UVIndex, UVIndexText: $UVIndexText, Visibility: $Visibility, PrecipitationSummary: $PrecipitationSummary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherConditionsResponseImpl &&
            (identical(other.WeatherText, WeatherText) ||
                other.WeatherText == WeatherText) &&
            (identical(other.HasPrecipitation, HasPrecipitation) ||
                other.HasPrecipitation == HasPrecipitation) &&
            (identical(other.IsDayTime, IsDayTime) ||
                other.IsDayTime == IsDayTime) &&
            const DeepCollectionEquality()
                .equals(other._Temperature, _Temperature) &&
            const DeepCollectionEquality()
                .equals(other._RealFeelTemperature, _RealFeelTemperature) &&
            (identical(other.RelativeHumidity, RelativeHumidity) ||
                other.RelativeHumidity == RelativeHumidity) &&
            const DeepCollectionEquality().equals(other._DewPoint, _DewPoint) &&
            const DeepCollectionEquality().equals(other._Wind, _Wind) &&
            const DeepCollectionEquality().equals(other._WindGust, _WindGust) &&
            (identical(other.UVIndex, UVIndex) || other.UVIndex == UVIndex) &&
            (identical(other.UVIndexText, UVIndexText) ||
                other.UVIndexText == UVIndexText) &&
            const DeepCollectionEquality()
                .equals(other._Visibility, _Visibility) &&
            const DeepCollectionEquality()
                .equals(other._PrecipitationSummary, _PrecipitationSummary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      WeatherText,
      HasPrecipitation,
      IsDayTime,
      const DeepCollectionEquality().hash(_Temperature),
      const DeepCollectionEquality().hash(_RealFeelTemperature),
      RelativeHumidity,
      const DeepCollectionEquality().hash(_DewPoint),
      const DeepCollectionEquality().hash(_Wind),
      const DeepCollectionEquality().hash(_WindGust),
      UVIndex,
      UVIndexText,
      const DeepCollectionEquality().hash(_Visibility),
      const DeepCollectionEquality().hash(_PrecipitationSummary));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherConditionsResponseImplCopyWith<_$WeatherConditionsResponseImpl>
      get copyWith => __$$WeatherConditionsResponseImplCopyWithImpl<
          _$WeatherConditionsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherConditionsResponseImplToJson(
      this,
    );
  }
}

abstract class _WeatherConditionsResponse extends WeatherConditionsResponse {
  const factory _WeatherConditionsResponse(
          {required final String WeatherText,
          required final bool HasPrecipitation,
          required final bool IsDayTime,
          required final Map<String, dynamic> Temperature,
          required final Map<String, dynamic> RealFeelTemperature,
          required final int RelativeHumidity,
          required final Map<String, dynamic> DewPoint,
          required final Map<String, dynamic> Wind,
          required final Map<String, dynamic> WindGust,
          required final int UVIndex,
          required final String UVIndexText,
          required final Map<String, dynamic> Visibility,
          required final Map<String, dynamic> PrecipitationSummary}) =
      _$WeatherConditionsResponseImpl;
  const _WeatherConditionsResponse._() : super._();

  factory _WeatherConditionsResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherConditionsResponseImpl.fromJson;

  @override
  String get WeatherText;
  @override
  bool get HasPrecipitation;
  @override
  bool get IsDayTime;
  @override
  Map<String, dynamic> get Temperature;
  @override
  Map<String, dynamic> get RealFeelTemperature;
  @override
  int get RelativeHumidity;
  @override
  Map<String, dynamic> get DewPoint;
  @override
  Map<String, dynamic> get Wind;
  @override
  Map<String, dynamic> get WindGust;
  @override
  int get UVIndex;
  @override
  String get UVIndexText;
  @override
  Map<String, dynamic> get Visibility;
  @override
  Map<String, dynamic> get PrecipitationSummary;
  @override
  @JsonKey(ignore: true)
  _$$WeatherConditionsResponseImplCopyWith<_$WeatherConditionsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
