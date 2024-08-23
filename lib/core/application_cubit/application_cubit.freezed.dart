// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApplicationState {
  String? get customerLoggedIn => throw _privateConstructorUsedError;
  bool get showDefaultAppBar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationStateCopyWith<ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
          ApplicationState value, $Res Function(ApplicationState) then) =
      _$ApplicationStateCopyWithImpl<$Res, ApplicationState>;
  @useResult
  $Res call({String? customerLoggedIn, bool showDefaultAppBar});
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res, $Val extends ApplicationState>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerLoggedIn = freezed,
    Object? showDefaultAppBar = null,
  }) {
    return _then(_value.copyWith(
      customerLoggedIn: freezed == customerLoggedIn
          ? _value.customerLoggedIn
          : customerLoggedIn // ignore: cast_nullable_to_non_nullable
              as String?,
      showDefaultAppBar: null == showDefaultAppBar
          ? _value.showDefaultAppBar
          : showDefaultAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplicationStateImplCopyWith<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  factory _$$ApplicationStateImplCopyWith(_$ApplicationStateImpl value,
          $Res Function(_$ApplicationStateImpl) then) =
      __$$ApplicationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? customerLoggedIn, bool showDefaultAppBar});
}

/// @nodoc
class __$$ApplicationStateImplCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$ApplicationStateImpl>
    implements _$$ApplicationStateImplCopyWith<$Res> {
  __$$ApplicationStateImplCopyWithImpl(_$ApplicationStateImpl _value,
      $Res Function(_$ApplicationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerLoggedIn = freezed,
    Object? showDefaultAppBar = null,
  }) {
    return _then(_$ApplicationStateImpl(
      customerLoggedIn: freezed == customerLoggedIn
          ? _value.customerLoggedIn
          : customerLoggedIn // ignore: cast_nullable_to_non_nullable
              as String?,
      showDefaultAppBar: null == showDefaultAppBar
          ? _value.showDefaultAppBar
          : showDefaultAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ApplicationStateImpl implements _ApplicationState {
  const _$ApplicationStateImpl(
      {this.customerLoggedIn, this.showDefaultAppBar = true});

  @override
  final String? customerLoggedIn;
  @override
  @JsonKey()
  final bool showDefaultAppBar;

  @override
  String toString() {
    return 'ApplicationState(customerLoggedIn: $customerLoggedIn, showDefaultAppBar: $showDefaultAppBar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationStateImpl &&
            (identical(other.customerLoggedIn, customerLoggedIn) ||
                other.customerLoggedIn == customerLoggedIn) &&
            (identical(other.showDefaultAppBar, showDefaultAppBar) ||
                other.showDefaultAppBar == showDefaultAppBar));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, customerLoggedIn, showDefaultAppBar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationStateImplCopyWith<_$ApplicationStateImpl> get copyWith =>
      __$$ApplicationStateImplCopyWithImpl<_$ApplicationStateImpl>(
          this, _$identity);
}

abstract class _ApplicationState implements ApplicationState {
  const factory _ApplicationState(
      {final String? customerLoggedIn,
      final bool showDefaultAppBar}) = _$ApplicationStateImpl;

  @override
  String? get customerLoggedIn;
  @override
  bool get showDefaultAppBar;
  @override
  @JsonKey(ignore: true)
  _$$ApplicationStateImplCopyWith<_$ApplicationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
