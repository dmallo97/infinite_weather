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
    required TResult Function() loadSavedLocations,
    required TResult Function(LocationMetadataModel locationData) saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentWeather,
    TResult? Function()? loadSavedLocations,
    TResult? Function(LocationMetadataModel locationData)? saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentWeather,
    TResult Function()? loadSavedLocations,
    TResult Function(LocationMetadataModel locationData)? saveLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCurrentWeather value) fetchCurrentWeather,
    required TResult Function(_LoadSavedLocations value) loadSavedLocations,
    required TResult Function(_SaveLocation value) saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCurrentWeather value)? fetchCurrentWeather,
    TResult? Function(_LoadSavedLocations value)? loadSavedLocations,
    TResult? Function(_SaveLocation value)? saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCurrentWeather value)? fetchCurrentWeather,
    TResult Function(_LoadSavedLocations value)? loadSavedLocations,
    TResult Function(_SaveLocation value)? saveLocation,
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

class _$FetchCurrentWeatherImpl
    with DiagnosticableTreeMixin
    implements _FetchCurrentWeather {
  const _$FetchCurrentWeatherImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SummaryEvent.fetchCurrentWeather()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SummaryEvent.fetchCurrentWeather'));
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
    required TResult Function() loadSavedLocations,
    required TResult Function(LocationMetadataModel locationData) saveLocation,
  }) {
    return fetchCurrentWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentWeather,
    TResult? Function()? loadSavedLocations,
    TResult? Function(LocationMetadataModel locationData)? saveLocation,
  }) {
    return fetchCurrentWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentWeather,
    TResult Function()? loadSavedLocations,
    TResult Function(LocationMetadataModel locationData)? saveLocation,
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
    required TResult Function(_LoadSavedLocations value) loadSavedLocations,
    required TResult Function(_SaveLocation value) saveLocation,
  }) {
    return fetchCurrentWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCurrentWeather value)? fetchCurrentWeather,
    TResult? Function(_LoadSavedLocations value)? loadSavedLocations,
    TResult? Function(_SaveLocation value)? saveLocation,
  }) {
    return fetchCurrentWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCurrentWeather value)? fetchCurrentWeather,
    TResult Function(_LoadSavedLocations value)? loadSavedLocations,
    TResult Function(_SaveLocation value)? saveLocation,
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
abstract class _$$LoadSavedLocationsImplCopyWith<$Res> {
  factory _$$LoadSavedLocationsImplCopyWith(_$LoadSavedLocationsImpl value,
          $Res Function(_$LoadSavedLocationsImpl) then) =
      __$$LoadSavedLocationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadSavedLocationsImplCopyWithImpl<$Res>
    extends _$SummaryEventCopyWithImpl<$Res, _$LoadSavedLocationsImpl>
    implements _$$LoadSavedLocationsImplCopyWith<$Res> {
  __$$LoadSavedLocationsImplCopyWithImpl(_$LoadSavedLocationsImpl _value,
      $Res Function(_$LoadSavedLocationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadSavedLocationsImpl
    with DiagnosticableTreeMixin
    implements _LoadSavedLocations {
  const _$LoadSavedLocationsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SummaryEvent.loadSavedLocations()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SummaryEvent.loadSavedLocations'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadSavedLocationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentWeather,
    required TResult Function() loadSavedLocations,
    required TResult Function(LocationMetadataModel locationData) saveLocation,
  }) {
    return loadSavedLocations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentWeather,
    TResult? Function()? loadSavedLocations,
    TResult? Function(LocationMetadataModel locationData)? saveLocation,
  }) {
    return loadSavedLocations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentWeather,
    TResult Function()? loadSavedLocations,
    TResult Function(LocationMetadataModel locationData)? saveLocation,
    required TResult orElse(),
  }) {
    if (loadSavedLocations != null) {
      return loadSavedLocations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCurrentWeather value) fetchCurrentWeather,
    required TResult Function(_LoadSavedLocations value) loadSavedLocations,
    required TResult Function(_SaveLocation value) saveLocation,
  }) {
    return loadSavedLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCurrentWeather value)? fetchCurrentWeather,
    TResult? Function(_LoadSavedLocations value)? loadSavedLocations,
    TResult? Function(_SaveLocation value)? saveLocation,
  }) {
    return loadSavedLocations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCurrentWeather value)? fetchCurrentWeather,
    TResult Function(_LoadSavedLocations value)? loadSavedLocations,
    TResult Function(_SaveLocation value)? saveLocation,
    required TResult orElse(),
  }) {
    if (loadSavedLocations != null) {
      return loadSavedLocations(this);
    }
    return orElse();
  }
}

abstract class _LoadSavedLocations implements SummaryEvent {
  const factory _LoadSavedLocations() = _$LoadSavedLocationsImpl;
}

/// @nodoc
abstract class _$$SaveLocationImplCopyWith<$Res> {
  factory _$$SaveLocationImplCopyWith(
          _$SaveLocationImpl value, $Res Function(_$SaveLocationImpl) then) =
      __$$SaveLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationMetadataModel locationData});

  $LocationMetadataModelCopyWith<$Res> get locationData;
}

/// @nodoc
class __$$SaveLocationImplCopyWithImpl<$Res>
    extends _$SummaryEventCopyWithImpl<$Res, _$SaveLocationImpl>
    implements _$$SaveLocationImplCopyWith<$Res> {
  __$$SaveLocationImplCopyWithImpl(
      _$SaveLocationImpl _value, $Res Function(_$SaveLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationData = null,
  }) {
    return _then(_$SaveLocationImpl(
      null == locationData
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationMetadataModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationMetadataModelCopyWith<$Res> get locationData {
    return $LocationMetadataModelCopyWith<$Res>(_value.locationData, (value) {
      return _then(_value.copyWith(locationData: value));
    });
  }
}

/// @nodoc

class _$SaveLocationImpl with DiagnosticableTreeMixin implements _SaveLocation {
  const _$SaveLocationImpl(this.locationData);

  @override
  final LocationMetadataModel locationData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SummaryEvent.saveLocation(locationData: $locationData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SummaryEvent.saveLocation'))
      ..add(DiagnosticsProperty('locationData', locationData));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveLocationImpl &&
            (identical(other.locationData, locationData) ||
                other.locationData == locationData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveLocationImplCopyWith<_$SaveLocationImpl> get copyWith =>
      __$$SaveLocationImplCopyWithImpl<_$SaveLocationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCurrentWeather,
    required TResult Function() loadSavedLocations,
    required TResult Function(LocationMetadataModel locationData) saveLocation,
  }) {
    return saveLocation(locationData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCurrentWeather,
    TResult? Function()? loadSavedLocations,
    TResult? Function(LocationMetadataModel locationData)? saveLocation,
  }) {
    return saveLocation?.call(locationData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCurrentWeather,
    TResult Function()? loadSavedLocations,
    TResult Function(LocationMetadataModel locationData)? saveLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(locationData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCurrentWeather value) fetchCurrentWeather,
    required TResult Function(_LoadSavedLocations value) loadSavedLocations,
    required TResult Function(_SaveLocation value) saveLocation,
  }) {
    return saveLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCurrentWeather value)? fetchCurrentWeather,
    TResult? Function(_LoadSavedLocations value)? loadSavedLocations,
    TResult? Function(_SaveLocation value)? saveLocation,
  }) {
    return saveLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCurrentWeather value)? fetchCurrentWeather,
    TResult Function(_LoadSavedLocations value)? loadSavedLocations,
    TResult Function(_SaveLocation value)? saveLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(this);
    }
    return orElse();
  }
}

abstract class _SaveLocation implements SummaryEvent {
  const factory _SaveLocation(final LocationMetadataModel locationData) =
      _$SaveLocationImpl;

  LocationMetadataModel get locationData;
  @JsonKey(ignore: true)
  _$$SaveLocationImplCopyWith<_$SaveLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SummaryState {
  ResultState<WeatherConditionsModel> get fetchCurrentLocationWeatherResult =>
      throw _privateConstructorUsedError;
  ResultState<List<LocationMetadataModel>> get loadSavedLocationsResult =>
      throw _privateConstructorUsedError;
  ResultState<bool> get saveLocationResult =>
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
  $Res call(
      {ResultState<WeatherConditionsModel> fetchCurrentLocationWeatherResult,
      ResultState<List<LocationMetadataModel>> loadSavedLocationsResult,
      ResultState<bool> saveLocationResult});

  $ResultStateCopyWith<WeatherConditionsModel, $Res>
      get fetchCurrentLocationWeatherResult;
  $ResultStateCopyWith<List<LocationMetadataModel>, $Res>
      get loadSavedLocationsResult;
  $ResultStateCopyWith<bool, $Res> get saveLocationResult;
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
    Object? fetchCurrentLocationWeatherResult = null,
    Object? loadSavedLocationsResult = null,
    Object? saveLocationResult = null,
  }) {
    return _then(_value.copyWith(
      fetchCurrentLocationWeatherResult: null ==
              fetchCurrentLocationWeatherResult
          ? _value.fetchCurrentLocationWeatherResult
          : fetchCurrentLocationWeatherResult // ignore: cast_nullable_to_non_nullable
              as ResultState<WeatherConditionsModel>,
      loadSavedLocationsResult: null == loadSavedLocationsResult
          ? _value.loadSavedLocationsResult
          : loadSavedLocationsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<List<LocationMetadataModel>>,
      saveLocationResult: null == saveLocationResult
          ? _value.saveLocationResult
          : saveLocationResult // ignore: cast_nullable_to_non_nullable
              as ResultState<bool>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<WeatherConditionsModel, $Res>
      get fetchCurrentLocationWeatherResult {
    return $ResultStateCopyWith<WeatherConditionsModel, $Res>(
        _value.fetchCurrentLocationWeatherResult, (value) {
      return _then(
          _value.copyWith(fetchCurrentLocationWeatherResult: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<List<LocationMetadataModel>, $Res>
      get loadSavedLocationsResult {
    return $ResultStateCopyWith<List<LocationMetadataModel>, $Res>(
        _value.loadSavedLocationsResult, (value) {
      return _then(_value.copyWith(loadSavedLocationsResult: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<bool, $Res> get saveLocationResult {
    return $ResultStateCopyWith<bool, $Res>(_value.saveLocationResult, (value) {
      return _then(_value.copyWith(saveLocationResult: value) as $Val);
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
  $Res call(
      {ResultState<WeatherConditionsModel> fetchCurrentLocationWeatherResult,
      ResultState<List<LocationMetadataModel>> loadSavedLocationsResult,
      ResultState<bool> saveLocationResult});

  @override
  $ResultStateCopyWith<WeatherConditionsModel, $Res>
      get fetchCurrentLocationWeatherResult;
  @override
  $ResultStateCopyWith<List<LocationMetadataModel>, $Res>
      get loadSavedLocationsResult;
  @override
  $ResultStateCopyWith<bool, $Res> get saveLocationResult;
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
    Object? fetchCurrentLocationWeatherResult = null,
    Object? loadSavedLocationsResult = null,
    Object? saveLocationResult = null,
  }) {
    return _then(_$SummaryStateImpl(
      fetchCurrentLocationWeatherResult: null ==
              fetchCurrentLocationWeatherResult
          ? _value.fetchCurrentLocationWeatherResult
          : fetchCurrentLocationWeatherResult // ignore: cast_nullable_to_non_nullable
              as ResultState<WeatherConditionsModel>,
      loadSavedLocationsResult: null == loadSavedLocationsResult
          ? _value.loadSavedLocationsResult
          : loadSavedLocationsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<List<LocationMetadataModel>>,
      saveLocationResult: null == saveLocationResult
          ? _value.saveLocationResult
          : saveLocationResult // ignore: cast_nullable_to_non_nullable
              as ResultState<bool>,
    ));
  }
}

/// @nodoc

class _$SummaryStateImpl with DiagnosticableTreeMixin implements _SummaryState {
  const _$SummaryStateImpl(
      {this.fetchCurrentLocationWeatherResult = const Loading(),
      this.loadSavedLocationsResult = const Initial(),
      this.saveLocationResult = const Initial()});

  @override
  @JsonKey()
  final ResultState<WeatherConditionsModel> fetchCurrentLocationWeatherResult;
  @override
  @JsonKey()
  final ResultState<List<LocationMetadataModel>> loadSavedLocationsResult;
  @override
  @JsonKey()
  final ResultState<bool> saveLocationResult;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SummaryState(fetchCurrentLocationWeatherResult: $fetchCurrentLocationWeatherResult, loadSavedLocationsResult: $loadSavedLocationsResult, saveLocationResult: $saveLocationResult)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SummaryState'))
      ..add(DiagnosticsProperty('fetchCurrentLocationWeatherResult',
          fetchCurrentLocationWeatherResult))
      ..add(DiagnosticsProperty(
          'loadSavedLocationsResult', loadSavedLocationsResult))
      ..add(DiagnosticsProperty('saveLocationResult', saveLocationResult));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SummaryStateImpl &&
            (identical(other.fetchCurrentLocationWeatherResult,
                    fetchCurrentLocationWeatherResult) ||
                other.fetchCurrentLocationWeatherResult ==
                    fetchCurrentLocationWeatherResult) &&
            (identical(
                    other.loadSavedLocationsResult, loadSavedLocationsResult) ||
                other.loadSavedLocationsResult == loadSavedLocationsResult) &&
            (identical(other.saveLocationResult, saveLocationResult) ||
                other.saveLocationResult == saveLocationResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fetchCurrentLocationWeatherResult,
      loadSavedLocationsResult,
      saveLocationResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SummaryStateImplCopyWith<_$SummaryStateImpl> get copyWith =>
      __$$SummaryStateImplCopyWithImpl<_$SummaryStateImpl>(this, _$identity);
}

abstract class _SummaryState implements SummaryState {
  const factory _SummaryState(
      {final ResultState<WeatherConditionsModel>
          fetchCurrentLocationWeatherResult,
      final ResultState<List<LocationMetadataModel>> loadSavedLocationsResult,
      final ResultState<bool> saveLocationResult}) = _$SummaryStateImpl;

  @override
  ResultState<WeatherConditionsModel> get fetchCurrentLocationWeatherResult;
  @override
  ResultState<List<LocationMetadataModel>> get loadSavedLocationsResult;
  @override
  ResultState<bool> get saveLocationResult;
  @override
  @JsonKey(ignore: true)
  _$$SummaryStateImplCopyWith<_$SummaryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
