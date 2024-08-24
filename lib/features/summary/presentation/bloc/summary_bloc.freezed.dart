// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SummaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCurrentWeather value) fetchCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCurrentWeather value)? fetchCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCurrentWeather value)? fetchCurrentWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryEventCopyWith<$Res> {
  factory $SummaryEventCopyWith(
          SummaryEvent value, $Res Function(SummaryEvent) then) =
      _$SummaryEventCopyWithImpl<$Res, SummaryEvent>;
}

/// @nodoc
class _$SummaryEventCopyWithImpl<$Res, $Val extends SummaryEvent>
    implements $SummaryEventCopyWith<$Res> {
  _$SummaryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchCurrentWeatherImplCopyWith<$Res> {
  factory _$$FetchCurrentWeatherImplCopyWith(_$FetchCurrentWeatherImpl value,
          $Res Function(_$FetchCurrentWeatherImpl) then) =
      __$$FetchCurrentWeatherImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCurrentWeatherImplCopyWithImpl<$Res>
    extends _$SummaryEventCopyWithImpl<$Res, _$FetchCurrentWeatherImpl>
    implements _$$FetchCurrentWeatherImplCopyWith<$Res> {
  __$$FetchCurrentWeatherImplCopyWithImpl(_$FetchCurrentWeatherImpl _value,
      $Res Function(_$FetchCurrentWeatherImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCurrentWeatherImpl implements _FetchCurrentWeather {
  const _$FetchCurrentWeatherImpl();

  @override
  String toString() {
    return 'SummaryEvent.fetchCurrentWeather()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCurrentWeatherImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentWeather,
  }) {
    return fetchCurrentWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentWeather,
  }) {
    return fetchCurrentWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentWeather,
    required TResult orElse(),
  }) {
    if (fetchCurrentWeather != null) {
      return fetchCurrentWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCurrentWeather value) fetchCurrentWeather,
  }) {
    return fetchCurrentWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCurrentWeather value)? fetchCurrentWeather,
  }) {
    return fetchCurrentWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCurrentWeather value)? fetchCurrentWeather,
    required TResult orElse(),
  }) {
    if (fetchCurrentWeather != null) {
      return fetchCurrentWeather(this);
    }
    return orElse();
  }
}

abstract class _FetchCurrentWeather implements SummaryEvent {
  const factory _FetchCurrentWeather() = _$FetchCurrentWeatherImpl;
}

/// @nodoc
mixin _$SummaryState {
  ResultState<WeatherConditionsModel> get fetchCurrentLocationWeather =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SummaryStateCopyWith<SummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryStateCopyWith<$Res> {
  factory $SummaryStateCopyWith(
          SummaryState value, $Res Function(SummaryState) then) =
      _$SummaryStateCopyWithImpl<$Res, SummaryState>;
  @useResult
  $Res call({ResultState<WeatherConditionsModel> fetchCurrentLocationWeather});

  $ResultStateCopyWith<WeatherConditionsModel, $Res>
      get fetchCurrentLocationWeather;
}

/// @nodoc
class _$SummaryStateCopyWithImpl<$Res, $Val extends SummaryState>
    implements $SummaryStateCopyWith<$Res> {
  _$SummaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchCurrentLocationWeather = null,
  }) {
    return _then(_value.copyWith(
      fetchCurrentLocationWeather: null == fetchCurrentLocationWeather
          ? _value.fetchCurrentLocationWeather
          : fetchCurrentLocationWeather // ignore: cast_nullable_to_non_nullable
              as ResultState<WeatherConditionsModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<WeatherConditionsModel, $Res>
      get fetchCurrentLocationWeather {
    return $ResultStateCopyWith<WeatherConditionsModel, $Res>(
        _value.fetchCurrentLocationWeather, (value) {
      return _then(_value.copyWith(fetchCurrentLocationWeather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SummaryStateImplCopyWith<$Res>
    implements $SummaryStateCopyWith<$Res> {
  factory _$$SummaryStateImplCopyWith(
          _$SummaryStateImpl value, $Res Function(_$SummaryStateImpl) then) =
      __$$SummaryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResultState<WeatherConditionsModel> fetchCurrentLocationWeather});

  @override
  $ResultStateCopyWith<WeatherConditionsModel, $Res>
      get fetchCurrentLocationWeather;
}

/// @nodoc
class __$$SummaryStateImplCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res, _$SummaryStateImpl>
    implements _$$SummaryStateImplCopyWith<$Res> {
  __$$SummaryStateImplCopyWithImpl(
      _$SummaryStateImpl _value, $Res Function(_$SummaryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchCurrentLocationWeather = null,
  }) {
    return _then(_$SummaryStateImpl(
      fetchCurrentLocationWeather: null == fetchCurrentLocationWeather
          ? _value.fetchCurrentLocationWeather
          : fetchCurrentLocationWeather // ignore: cast_nullable_to_non_nullable
              as ResultState<WeatherConditionsModel>,
    ));
  }
}

/// @nodoc

class _$SummaryStateImpl implements _SummaryState {
  const _$SummaryStateImpl(
      {this.fetchCurrentLocationWeather = const Loading()});

  @override
  @JsonKey()
  final ResultState<WeatherConditionsModel> fetchCurrentLocationWeather;

  @override
  String toString() {
    return 'SummaryState(fetchCurrentLocationWeather: $fetchCurrentLocationWeather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SummaryStateImpl &&
            (identical(other.fetchCurrentLocationWeather,
                    fetchCurrentLocationWeather) ||
                other.fetchCurrentLocationWeather ==
                    fetchCurrentLocationWeather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchCurrentLocationWeather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SummaryStateImplCopyWith<_$SummaryStateImpl> get copyWith =>
      __$$SummaryStateImplCopyWithImpl<_$SummaryStateImpl>(this, _$identity);
}

abstract class _SummaryState implements SummaryState {
  const factory _SummaryState(
      {final ResultState<WeatherConditionsModel>
          fetchCurrentLocationWeather}) = _$SummaryStateImpl;

  @override
  ResultState<WeatherConditionsModel> get fetchCurrentLocationWeather;
  @override
  @JsonKey(ignore: true)
  _$$SummaryStateImplCopyWith<_$SummaryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
