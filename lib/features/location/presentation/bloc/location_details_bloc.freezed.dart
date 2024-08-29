// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationDetailsEvent {
  LocationMetadataModel get locationMetadata =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationMetadataModel locationMetadata)
        getLocationWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationMetadataModel locationMetadata)?
        getLocationWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationMetadataModel locationMetadata)?
        getLocationWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLocationWeather value) getLocationWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLocationWeather value)? getLocationWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLocationWeather value)? getLocationWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationDetailsEventCopyWith<LocationDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDetailsEventCopyWith<$Res> {
  factory $LocationDetailsEventCopyWith(LocationDetailsEvent value,
          $Res Function(LocationDetailsEvent) then) =
      _$LocationDetailsEventCopyWithImpl<$Res, LocationDetailsEvent>;
  @useResult
  $Res call({LocationMetadataModel locationMetadata});

  $LocationMetadataModelCopyWith<$Res> get locationMetadata;
}

/// @nodoc
class _$LocationDetailsEventCopyWithImpl<$Res,
        $Val extends LocationDetailsEvent>
    implements $LocationDetailsEventCopyWith<$Res> {
  _$LocationDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationMetadata = null,
  }) {
    return _then(_value.copyWith(
      locationMetadata: null == locationMetadata
          ? _value.locationMetadata
          : locationMetadata // ignore: cast_nullable_to_non_nullable
              as LocationMetadataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationMetadataModelCopyWith<$Res> get locationMetadata {
    return $LocationMetadataModelCopyWith<$Res>(_value.locationMetadata,
        (value) {
      return _then(_value.copyWith(locationMetadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetLocationWeatherImplCopyWith<$Res>
    implements $LocationDetailsEventCopyWith<$Res> {
  factory _$$GetLocationWeatherImplCopyWith(_$GetLocationWeatherImpl value,
          $Res Function(_$GetLocationWeatherImpl) then) =
      __$$GetLocationWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationMetadataModel locationMetadata});

  @override
  $LocationMetadataModelCopyWith<$Res> get locationMetadata;
}

/// @nodoc
class __$$GetLocationWeatherImplCopyWithImpl<$Res>
    extends _$LocationDetailsEventCopyWithImpl<$Res, _$GetLocationWeatherImpl>
    implements _$$GetLocationWeatherImplCopyWith<$Res> {
  __$$GetLocationWeatherImplCopyWithImpl(_$GetLocationWeatherImpl _value,
      $Res Function(_$GetLocationWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationMetadata = null,
  }) {
    return _then(_$GetLocationWeatherImpl(
      null == locationMetadata
          ? _value.locationMetadata
          : locationMetadata // ignore: cast_nullable_to_non_nullable
              as LocationMetadataModel,
    ));
  }
}

/// @nodoc

class _$GetLocationWeatherImpl implements _GetLocationWeather {
  const _$GetLocationWeatherImpl(this.locationMetadata);

  @override
  final LocationMetadataModel locationMetadata;

  @override
  String toString() {
    return 'LocationDetailsEvent.getLocationWeather(locationMetadata: $locationMetadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocationWeatherImpl &&
            (identical(other.locationMetadata, locationMetadata) ||
                other.locationMetadata == locationMetadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationMetadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLocationWeatherImplCopyWith<_$GetLocationWeatherImpl> get copyWith =>
      __$$GetLocationWeatherImplCopyWithImpl<_$GetLocationWeatherImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationMetadataModel locationMetadata)
        getLocationWeather,
  }) {
    return getLocationWeather(locationMetadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationMetadataModel locationMetadata)?
        getLocationWeather,
  }) {
    return getLocationWeather?.call(locationMetadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationMetadataModel locationMetadata)?
        getLocationWeather,
    required TResult orElse(),
  }) {
    if (getLocationWeather != null) {
      return getLocationWeather(locationMetadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLocationWeather value) getLocationWeather,
  }) {
    return getLocationWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLocationWeather value)? getLocationWeather,
  }) {
    return getLocationWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLocationWeather value)? getLocationWeather,
    required TResult orElse(),
  }) {
    if (getLocationWeather != null) {
      return getLocationWeather(this);
    }
    return orElse();
  }
}

abstract class _GetLocationWeather implements LocationDetailsEvent {
  const factory _GetLocationWeather(
      final LocationMetadataModel locationMetadata) = _$GetLocationWeatherImpl;

  @override
  LocationMetadataModel get locationMetadata;
  @override
  @JsonKey(ignore: true)
  _$$GetLocationWeatherImplCopyWith<_$GetLocationWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationDetailsState {
  ResultState<WeatherConditionsModel?>
      get fetchLocationWeatherConditionResult =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationDetailsStateCopyWith<LocationDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDetailsStateCopyWith<$Res> {
  factory $LocationDetailsStateCopyWith(LocationDetailsState value,
          $Res Function(LocationDetailsState) then) =
      _$LocationDetailsStateCopyWithImpl<$Res, LocationDetailsState>;
  @useResult
  $Res call(
      {ResultState<WeatherConditionsModel?>
          fetchLocationWeatherConditionResult});

  $ResultStateCopyWith<WeatherConditionsModel?, $Res>
      get fetchLocationWeatherConditionResult;
}

/// @nodoc
class _$LocationDetailsStateCopyWithImpl<$Res,
        $Val extends LocationDetailsState>
    implements $LocationDetailsStateCopyWith<$Res> {
  _$LocationDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchLocationWeatherConditionResult = null,
  }) {
    return _then(_value.copyWith(
      fetchLocationWeatherConditionResult: null ==
              fetchLocationWeatherConditionResult
          ? _value.fetchLocationWeatherConditionResult
          : fetchLocationWeatherConditionResult // ignore: cast_nullable_to_non_nullable
              as ResultState<WeatherConditionsModel?>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<WeatherConditionsModel?, $Res>
      get fetchLocationWeatherConditionResult {
    return $ResultStateCopyWith<WeatherConditionsModel?, $Res>(
        _value.fetchLocationWeatherConditionResult, (value) {
      return _then(
          _value.copyWith(fetchLocationWeatherConditionResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationDetailsStateImplCopyWith<$Res>
    implements $LocationDetailsStateCopyWith<$Res> {
  factory _$$LocationDetailsStateImplCopyWith(_$LocationDetailsStateImpl value,
          $Res Function(_$LocationDetailsStateImpl) then) =
      __$$LocationDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResultState<WeatherConditionsModel?>
          fetchLocationWeatherConditionResult});

  @override
  $ResultStateCopyWith<WeatherConditionsModel?, $Res>
      get fetchLocationWeatherConditionResult;
}

/// @nodoc
class __$$LocationDetailsStateImplCopyWithImpl<$Res>
    extends _$LocationDetailsStateCopyWithImpl<$Res, _$LocationDetailsStateImpl>
    implements _$$LocationDetailsStateImplCopyWith<$Res> {
  __$$LocationDetailsStateImplCopyWithImpl(_$LocationDetailsStateImpl _value,
      $Res Function(_$LocationDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchLocationWeatherConditionResult = null,
  }) {
    return _then(_$LocationDetailsStateImpl(
      fetchLocationWeatherConditionResult: null ==
              fetchLocationWeatherConditionResult
          ? _value.fetchLocationWeatherConditionResult
          : fetchLocationWeatherConditionResult // ignore: cast_nullable_to_non_nullable
              as ResultState<WeatherConditionsModel?>,
    ));
  }
}

/// @nodoc

class _$LocationDetailsStateImpl implements _LocationDetailsState {
  const _$LocationDetailsStateImpl(
      {this.fetchLocationWeatherConditionResult = const Loading()});

  @override
  @JsonKey()
  final ResultState<WeatherConditionsModel?>
      fetchLocationWeatherConditionResult;

  @override
  String toString() {
    return 'LocationDetailsState(fetchLocationWeatherConditionResult: $fetchLocationWeatherConditionResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDetailsStateImpl &&
            (identical(other.fetchLocationWeatherConditionResult,
                    fetchLocationWeatherConditionResult) ||
                other.fetchLocationWeatherConditionResult ==
                    fetchLocationWeatherConditionResult));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fetchLocationWeatherConditionResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDetailsStateImplCopyWith<_$LocationDetailsStateImpl>
      get copyWith =>
          __$$LocationDetailsStateImplCopyWithImpl<_$LocationDetailsStateImpl>(
              this, _$identity);
}

abstract class _LocationDetailsState implements LocationDetailsState {
  const factory _LocationDetailsState(
      {final ResultState<WeatherConditionsModel?>
          fetchLocationWeatherConditionResult}) = _$LocationDetailsStateImpl;

  @override
  ResultState<WeatherConditionsModel?> get fetchLocationWeatherConditionResult;
  @override
  @JsonKey(ignore: true)
  _$$LocationDetailsStateImplCopyWith<_$LocationDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
