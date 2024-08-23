// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_check_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectivityCheckEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectivityResult connectivityResult)
        updateConnectivity,
    required TResult Function() checkConnectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityResult connectivityResult)?
        updateConnectivity,
    TResult? Function()? checkConnectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectivityResult connectivityResult)? updateConnectivity,
    TResult Function()? checkConnectivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateConnectivity value) updateConnectivity,
    required TResult Function(_CheckConnectivity value) checkConnectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateConnectivity value)? updateConnectivity,
    TResult? Function(_CheckConnectivity value)? checkConnectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateConnectivity value)? updateConnectivity,
    TResult Function(_CheckConnectivity value)? checkConnectivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityCheckEventCopyWith<$Res> {
  factory $ConnectivityCheckEventCopyWith(ConnectivityCheckEvent value,
          $Res Function(ConnectivityCheckEvent) then) =
      _$ConnectivityCheckEventCopyWithImpl<$Res, ConnectivityCheckEvent>;
}

/// @nodoc
class _$ConnectivityCheckEventCopyWithImpl<$Res,
        $Val extends ConnectivityCheckEvent>
    implements $ConnectivityCheckEventCopyWith<$Res> {
  _$ConnectivityCheckEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateConnectivityImplCopyWith<$Res> {
  factory _$$UpdateConnectivityImplCopyWith(_$UpdateConnectivityImpl value,
          $Res Function(_$UpdateConnectivityImpl) then) =
      __$$UpdateConnectivityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectivityResult connectivityResult});
}

/// @nodoc
class __$$UpdateConnectivityImplCopyWithImpl<$Res>
    extends _$ConnectivityCheckEventCopyWithImpl<$Res, _$UpdateConnectivityImpl>
    implements _$$UpdateConnectivityImplCopyWith<$Res> {
  __$$UpdateConnectivityImplCopyWithImpl(_$UpdateConnectivityImpl _value,
      $Res Function(_$UpdateConnectivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectivityResult = null,
  }) {
    return _then(_$UpdateConnectivityImpl(
      null == connectivityResult
          ? _value.connectivityResult
          : connectivityResult // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$UpdateConnectivityImpl implements _UpdateConnectivity {
  const _$UpdateConnectivityImpl(this.connectivityResult);

  @override
  final ConnectivityResult connectivityResult;

  @override
  String toString() {
    return 'ConnectivityCheckEvent.updateConnectivity(connectivityResult: $connectivityResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateConnectivityImpl &&
            (identical(other.connectivityResult, connectivityResult) ||
                other.connectivityResult == connectivityResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectivityResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateConnectivityImplCopyWith<_$UpdateConnectivityImpl> get copyWith =>
      __$$UpdateConnectivityImplCopyWithImpl<_$UpdateConnectivityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectivityResult connectivityResult)
        updateConnectivity,
    required TResult Function() checkConnectivity,
  }) {
    return updateConnectivity(connectivityResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityResult connectivityResult)?
        updateConnectivity,
    TResult? Function()? checkConnectivity,
  }) {
    return updateConnectivity?.call(connectivityResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectivityResult connectivityResult)? updateConnectivity,
    TResult Function()? checkConnectivity,
    required TResult orElse(),
  }) {
    if (updateConnectivity != null) {
      return updateConnectivity(connectivityResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateConnectivity value) updateConnectivity,
    required TResult Function(_CheckConnectivity value) checkConnectivity,
  }) {
    return updateConnectivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateConnectivity value)? updateConnectivity,
    TResult? Function(_CheckConnectivity value)? checkConnectivity,
  }) {
    return updateConnectivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateConnectivity value)? updateConnectivity,
    TResult Function(_CheckConnectivity value)? checkConnectivity,
    required TResult orElse(),
  }) {
    if (updateConnectivity != null) {
      return updateConnectivity(this);
    }
    return orElse();
  }
}

abstract class _UpdateConnectivity implements ConnectivityCheckEvent {
  const factory _UpdateConnectivity(
      final ConnectivityResult connectivityResult) = _$UpdateConnectivityImpl;

  ConnectivityResult get connectivityResult;
  @JsonKey(ignore: true)
  _$$UpdateConnectivityImplCopyWith<_$UpdateConnectivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckConnectivityImplCopyWith<$Res> {
  factory _$$CheckConnectivityImplCopyWith(_$CheckConnectivityImpl value,
          $Res Function(_$CheckConnectivityImpl) then) =
      __$$CheckConnectivityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckConnectivityImplCopyWithImpl<$Res>
    extends _$ConnectivityCheckEventCopyWithImpl<$Res, _$CheckConnectivityImpl>
    implements _$$CheckConnectivityImplCopyWith<$Res> {
  __$$CheckConnectivityImplCopyWithImpl(_$CheckConnectivityImpl _value,
      $Res Function(_$CheckConnectivityImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckConnectivityImpl implements _CheckConnectivity {
  const _$CheckConnectivityImpl();

  @override
  String toString() {
    return 'ConnectivityCheckEvent.checkConnectivity()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckConnectivityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectivityResult connectivityResult)
        updateConnectivity,
    required TResult Function() checkConnectivity,
  }) {
    return checkConnectivity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityResult connectivityResult)?
        updateConnectivity,
    TResult? Function()? checkConnectivity,
  }) {
    return checkConnectivity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectivityResult connectivityResult)? updateConnectivity,
    TResult Function()? checkConnectivity,
    required TResult orElse(),
  }) {
    if (checkConnectivity != null) {
      return checkConnectivity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateConnectivity value) updateConnectivity,
    required TResult Function(_CheckConnectivity value) checkConnectivity,
  }) {
    return checkConnectivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateConnectivity value)? updateConnectivity,
    TResult? Function(_CheckConnectivity value)? checkConnectivity,
  }) {
    return checkConnectivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateConnectivity value)? updateConnectivity,
    TResult Function(_CheckConnectivity value)? checkConnectivity,
    required TResult orElse(),
  }) {
    if (checkConnectivity != null) {
      return checkConnectivity(this);
    }
    return orElse();
  }
}

abstract class _CheckConnectivity implements ConnectivityCheckEvent {
  const factory _CheckConnectivity() = _$CheckConnectivityImpl;
}

/// @nodoc
mixin _$ConnectivityCheckState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingConnectivityCheckState,
    required TResult Function() connectedState,
    required TResult Function() notConnectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingConnectivityCheckState,
    TResult? Function()? connectedState,
    TResult? Function()? notConnectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingConnectivityCheckState,
    TResult Function()? connectedState,
    TResult Function()? notConnectedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingConnectivityCheckState value)
        loadingConnectivityCheckState,
    required TResult Function(ConnectedConnectivityCheckState value)
        connectedState,
    required TResult Function(NotConnectedConnectivityCheckState value)
        notConnectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingConnectivityCheckState value)?
        loadingConnectivityCheckState,
    TResult? Function(ConnectedConnectivityCheckState value)? connectedState,
    TResult? Function(NotConnectedConnectivityCheckState value)?
        notConnectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingConnectivityCheckState value)?
        loadingConnectivityCheckState,
    TResult Function(ConnectedConnectivityCheckState value)? connectedState,
    TResult Function(NotConnectedConnectivityCheckState value)?
        notConnectedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityCheckStateCopyWith<$Res> {
  factory $ConnectivityCheckStateCopyWith(ConnectivityCheckState value,
          $Res Function(ConnectivityCheckState) then) =
      _$ConnectivityCheckStateCopyWithImpl<$Res, ConnectivityCheckState>;
}

/// @nodoc
class _$ConnectivityCheckStateCopyWithImpl<$Res,
        $Val extends ConnectivityCheckState>
    implements $ConnectivityCheckStateCopyWith<$Res> {
  _$ConnectivityCheckStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingConnectivityCheckStateImplCopyWith<$Res> {
  factory _$$LoadingConnectivityCheckStateImplCopyWith(
          _$LoadingConnectivityCheckStateImpl value,
          $Res Function(_$LoadingConnectivityCheckStateImpl) then) =
      __$$LoadingConnectivityCheckStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingConnectivityCheckStateImplCopyWithImpl<$Res>
    extends _$ConnectivityCheckStateCopyWithImpl<$Res,
        _$LoadingConnectivityCheckStateImpl>
    implements _$$LoadingConnectivityCheckStateImplCopyWith<$Res> {
  __$$LoadingConnectivityCheckStateImplCopyWithImpl(
      _$LoadingConnectivityCheckStateImpl _value,
      $Res Function(_$LoadingConnectivityCheckStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingConnectivityCheckStateImpl
    implements LoadingConnectivityCheckState {
  const _$LoadingConnectivityCheckStateImpl();

  @override
  String toString() {
    return 'ConnectivityCheckState.loadingConnectivityCheckState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingConnectivityCheckStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingConnectivityCheckState,
    required TResult Function() connectedState,
    required TResult Function() notConnectedState,
  }) {
    return loadingConnectivityCheckState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingConnectivityCheckState,
    TResult? Function()? connectedState,
    TResult? Function()? notConnectedState,
  }) {
    return loadingConnectivityCheckState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingConnectivityCheckState,
    TResult Function()? connectedState,
    TResult Function()? notConnectedState,
    required TResult orElse(),
  }) {
    if (loadingConnectivityCheckState != null) {
      return loadingConnectivityCheckState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingConnectivityCheckState value)
        loadingConnectivityCheckState,
    required TResult Function(ConnectedConnectivityCheckState value)
        connectedState,
    required TResult Function(NotConnectedConnectivityCheckState value)
        notConnectedState,
  }) {
    return loadingConnectivityCheckState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingConnectivityCheckState value)?
        loadingConnectivityCheckState,
    TResult? Function(ConnectedConnectivityCheckState value)? connectedState,
    TResult? Function(NotConnectedConnectivityCheckState value)?
        notConnectedState,
  }) {
    return loadingConnectivityCheckState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingConnectivityCheckState value)?
        loadingConnectivityCheckState,
    TResult Function(ConnectedConnectivityCheckState value)? connectedState,
    TResult Function(NotConnectedConnectivityCheckState value)?
        notConnectedState,
    required TResult orElse(),
  }) {
    if (loadingConnectivityCheckState != null) {
      return loadingConnectivityCheckState(this);
    }
    return orElse();
  }
}

abstract class LoadingConnectivityCheckState implements ConnectivityCheckState {
  const factory LoadingConnectivityCheckState() =
      _$LoadingConnectivityCheckStateImpl;
}

/// @nodoc
abstract class _$$ConnectedConnectivityCheckStateImplCopyWith<$Res> {
  factory _$$ConnectedConnectivityCheckStateImplCopyWith(
          _$ConnectedConnectivityCheckStateImpl value,
          $Res Function(_$ConnectedConnectivityCheckStateImpl) then) =
      __$$ConnectedConnectivityCheckStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedConnectivityCheckStateImplCopyWithImpl<$Res>
    extends _$ConnectivityCheckStateCopyWithImpl<$Res,
        _$ConnectedConnectivityCheckStateImpl>
    implements _$$ConnectedConnectivityCheckStateImplCopyWith<$Res> {
  __$$ConnectedConnectivityCheckStateImplCopyWithImpl(
      _$ConnectedConnectivityCheckStateImpl _value,
      $Res Function(_$ConnectedConnectivityCheckStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectedConnectivityCheckStateImpl
    implements ConnectedConnectivityCheckState {
  const _$ConnectedConnectivityCheckStateImpl();

  @override
  String toString() {
    return 'ConnectivityCheckState.connectedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectedConnectivityCheckStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingConnectivityCheckState,
    required TResult Function() connectedState,
    required TResult Function() notConnectedState,
  }) {
    return connectedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingConnectivityCheckState,
    TResult? Function()? connectedState,
    TResult? Function()? notConnectedState,
  }) {
    return connectedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingConnectivityCheckState,
    TResult Function()? connectedState,
    TResult Function()? notConnectedState,
    required TResult orElse(),
  }) {
    if (connectedState != null) {
      return connectedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingConnectivityCheckState value)
        loadingConnectivityCheckState,
    required TResult Function(ConnectedConnectivityCheckState value)
        connectedState,
    required TResult Function(NotConnectedConnectivityCheckState value)
        notConnectedState,
  }) {
    return connectedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingConnectivityCheckState value)?
        loadingConnectivityCheckState,
    TResult? Function(ConnectedConnectivityCheckState value)? connectedState,
    TResult? Function(NotConnectedConnectivityCheckState value)?
        notConnectedState,
  }) {
    return connectedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingConnectivityCheckState value)?
        loadingConnectivityCheckState,
    TResult Function(ConnectedConnectivityCheckState value)? connectedState,
    TResult Function(NotConnectedConnectivityCheckState value)?
        notConnectedState,
    required TResult orElse(),
  }) {
    if (connectedState != null) {
      return connectedState(this);
    }
    return orElse();
  }
}

abstract class ConnectedConnectivityCheckState
    implements ConnectivityCheckState {
  const factory ConnectedConnectivityCheckState() =
      _$ConnectedConnectivityCheckStateImpl;
}

/// @nodoc
abstract class _$$NotConnectedConnectivityCheckStateImplCopyWith<$Res> {
  factory _$$NotConnectedConnectivityCheckStateImplCopyWith(
          _$NotConnectedConnectivityCheckStateImpl value,
          $Res Function(_$NotConnectedConnectivityCheckStateImpl) then) =
      __$$NotConnectedConnectivityCheckStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotConnectedConnectivityCheckStateImplCopyWithImpl<$Res>
    extends _$ConnectivityCheckStateCopyWithImpl<$Res,
        _$NotConnectedConnectivityCheckStateImpl>
    implements _$$NotConnectedConnectivityCheckStateImplCopyWith<$Res> {
  __$$NotConnectedConnectivityCheckStateImplCopyWithImpl(
      _$NotConnectedConnectivityCheckStateImpl _value,
      $Res Function(_$NotConnectedConnectivityCheckStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotConnectedConnectivityCheckStateImpl
    implements NotConnectedConnectivityCheckState {
  const _$NotConnectedConnectivityCheckStateImpl();

  @override
  String toString() {
    return 'ConnectivityCheckState.notConnectedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotConnectedConnectivityCheckStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingConnectivityCheckState,
    required TResult Function() connectedState,
    required TResult Function() notConnectedState,
  }) {
    return notConnectedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingConnectivityCheckState,
    TResult? Function()? connectedState,
    TResult? Function()? notConnectedState,
  }) {
    return notConnectedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingConnectivityCheckState,
    TResult Function()? connectedState,
    TResult Function()? notConnectedState,
    required TResult orElse(),
  }) {
    if (notConnectedState != null) {
      return notConnectedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingConnectivityCheckState value)
        loadingConnectivityCheckState,
    required TResult Function(ConnectedConnectivityCheckState value)
        connectedState,
    required TResult Function(NotConnectedConnectivityCheckState value)
        notConnectedState,
  }) {
    return notConnectedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingConnectivityCheckState value)?
        loadingConnectivityCheckState,
    TResult? Function(ConnectedConnectivityCheckState value)? connectedState,
    TResult? Function(NotConnectedConnectivityCheckState value)?
        notConnectedState,
  }) {
    return notConnectedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingConnectivityCheckState value)?
        loadingConnectivityCheckState,
    TResult Function(ConnectedConnectivityCheckState value)? connectedState,
    TResult Function(NotConnectedConnectivityCheckState value)?
        notConnectedState,
    required TResult orElse(),
  }) {
    if (notConnectedState != null) {
      return notConnectedState(this);
    }
    return orElse();
  }
}

abstract class NotConnectedConnectivityCheckState
    implements ConnectivityCheckState {
  const factory NotConnectedConnectivityCheckState() =
      _$NotConnectedConnectivityCheckStateImpl;
}
