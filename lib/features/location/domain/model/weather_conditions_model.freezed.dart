// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_conditions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherConditionsModel {
  String get location => throw _privateConstructorUsedError;
  WeatherCondition get weatherCondition => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  num? get temperature => throw _privateConstructorUsedError;
  num? get humidity => throw _privateConstructorUsedError;
  num? get rainProbability => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherConditionsModelCopyWith<WeatherConditionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionsModelCopyWith<$Res> {
  factory $WeatherConditionsModelCopyWith(WeatherConditionsModel value,
          $Res Function(WeatherConditionsModel) then) =
      _$WeatherConditionsModelCopyWithImpl<$Res, WeatherConditionsModel>;
  @useResult
  $Res call(
      {String location,
      WeatherCondition weatherCondition,
      String description,
      num? temperature,
      num? humidity,
      num? rainProbability});
}

/// @nodoc
class _$WeatherConditionsModelCopyWithImpl<$Res,
        $Val extends WeatherConditionsModel>
    implements $WeatherConditionsModelCopyWith<$Res> {
  _$WeatherConditionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? weatherCondition = null,
    Object? description = null,
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? rainProbability = freezed,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as num?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
      rainProbability: freezed == rainProbability
          ? _value.rainProbability
          : rainProbability // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherConditionsModelImplCopyWith<$Res>
    implements $WeatherConditionsModelCopyWith<$Res> {
  factory _$$WeatherConditionsModelImplCopyWith(
          _$WeatherConditionsModelImpl value,
          $Res Function(_$WeatherConditionsModelImpl) then) =
      __$$WeatherConditionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String location,
      WeatherCondition weatherCondition,
      String description,
      num? temperature,
      num? humidity,
      num? rainProbability});
}

/// @nodoc
class __$$WeatherConditionsModelImplCopyWithImpl<$Res>
    extends _$WeatherConditionsModelCopyWithImpl<$Res,
        _$WeatherConditionsModelImpl>
    implements _$$WeatherConditionsModelImplCopyWith<$Res> {
  __$$WeatherConditionsModelImplCopyWithImpl(
      _$WeatherConditionsModelImpl _value,
      $Res Function(_$WeatherConditionsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? weatherCondition = null,
    Object? description = null,
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? rainProbability = freezed,
  }) {
    return _then(_$WeatherConditionsModelImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as num?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
      rainProbability: freezed == rainProbability
          ? _value.rainProbability
          : rainProbability // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$WeatherConditionsModelImpl implements _WeatherConditionsModel {
  const _$WeatherConditionsModelImpl(
      {required this.location,
      required this.weatherCondition,
      required this.description,
      this.temperature,
      this.humidity,
      this.rainProbability});

  @override
  final String location;
  @override
  final WeatherCondition weatherCondition;
  @override
  final String description;
  @override
  final num? temperature;
  @override
  final num? humidity;
  @override
  final num? rainProbability;

  @override
  String toString() {
    return 'WeatherConditionsModel(location: $location, weatherCondition: $weatherCondition, description: $description, temperature: $temperature, humidity: $humidity, rainProbability: $rainProbability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherConditionsModelImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.rainProbability, rainProbability) ||
                other.rainProbability == rainProbability));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, weatherCondition,
      description, temperature, humidity, rainProbability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherConditionsModelImplCopyWith<_$WeatherConditionsModelImpl>
      get copyWith => __$$WeatherConditionsModelImplCopyWithImpl<
          _$WeatherConditionsModelImpl>(this, _$identity);
}

abstract class _WeatherConditionsModel implements WeatherConditionsModel {
  const factory _WeatherConditionsModel(
      {required final String location,
      required final WeatherCondition weatherCondition,
      required final String description,
      final num? temperature,
      final num? humidity,
      final num? rainProbability}) = _$WeatherConditionsModelImpl;

  @override
  String get location;
  @override
  WeatherCondition get weatherCondition;
  @override
  String get description;
  @override
  num? get temperature;
  @override
  num? get humidity;
  @override
  num? get rainProbability;
  @override
  @JsonKey(ignore: true)
  _$$WeatherConditionsModelImplCopyWith<_$WeatherConditionsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
