// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locations_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchLocations,
    required TResult Function() nextPage,
    required TResult Function() previousPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchLocations,
    TResult? Function()? nextPage,
    TResult? Function()? previousPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchLocations,
    TResult Function()? nextPage,
    TResult Function()? previousPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchLocations value) searchLocations,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_PreviousPage value) previousPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchLocations value)? searchLocations,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_PreviousPage value)? previousPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchLocations value)? searchLocations,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_PreviousPage value)? previousPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsListEventCopyWith<$Res> {
  factory $LocationsListEventCopyWith(
          LocationsListEvent value, $Res Function(LocationsListEvent) then) =
      _$LocationsListEventCopyWithImpl<$Res, LocationsListEvent>;
}

/// @nodoc
class _$LocationsListEventCopyWithImpl<$Res, $Val extends LocationsListEvent>
    implements $LocationsListEventCopyWith<$Res> {
  _$LocationsListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchLocationsImplCopyWith<$Res> {
  factory _$$SearchLocationsImplCopyWith(_$SearchLocationsImpl value,
          $Res Function(_$SearchLocationsImpl) then) =
      __$$SearchLocationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SearchLocationsImplCopyWithImpl<$Res>
    extends _$LocationsListEventCopyWithImpl<$Res, _$SearchLocationsImpl>
    implements _$$SearchLocationsImplCopyWith<$Res> {
  __$$SearchLocationsImplCopyWithImpl(
      _$SearchLocationsImpl _value, $Res Function(_$SearchLocationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$SearchLocationsImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchLocationsImpl implements _SearchLocations {
  const _$SearchLocationsImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'LocationsListEvent.searchLocations(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocationsImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLocationsImplCopyWith<_$SearchLocationsImpl> get copyWith =>
      __$$SearchLocationsImplCopyWithImpl<_$SearchLocationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchLocations,
    required TResult Function() nextPage,
    required TResult Function() previousPage,
  }) {
    return searchLocations(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchLocations,
    TResult? Function()? nextPage,
    TResult? Function()? previousPage,
  }) {
    return searchLocations?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchLocations,
    TResult Function()? nextPage,
    TResult Function()? previousPage,
    required TResult orElse(),
  }) {
    if (searchLocations != null) {
      return searchLocations(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchLocations value) searchLocations,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_PreviousPage value) previousPage,
  }) {
    return searchLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchLocations value)? searchLocations,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_PreviousPage value)? previousPage,
  }) {
    return searchLocations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchLocations value)? searchLocations,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_PreviousPage value)? previousPage,
    required TResult orElse(),
  }) {
    if (searchLocations != null) {
      return searchLocations(this);
    }
    return orElse();
  }
}

abstract class _SearchLocations implements LocationsListEvent {
  const factory _SearchLocations(final String text) = _$SearchLocationsImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$SearchLocationsImplCopyWith<_$SearchLocationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextPageImplCopyWith<$Res> {
  factory _$$NextPageImplCopyWith(
          _$NextPageImpl value, $Res Function(_$NextPageImpl) then) =
      __$$NextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageImplCopyWithImpl<$Res>
    extends _$LocationsListEventCopyWithImpl<$Res, _$NextPageImpl>
    implements _$$NextPageImplCopyWith<$Res> {
  __$$NextPageImplCopyWithImpl(
      _$NextPageImpl _value, $Res Function(_$NextPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPageImpl implements _NextPage {
  const _$NextPageImpl();

  @override
  String toString() {
    return 'LocationsListEvent.nextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchLocations,
    required TResult Function() nextPage,
    required TResult Function() previousPage,
  }) {
    return nextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchLocations,
    TResult? Function()? nextPage,
    TResult? Function()? previousPage,
  }) {
    return nextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchLocations,
    TResult Function()? nextPage,
    TResult Function()? previousPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchLocations value) searchLocations,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_PreviousPage value) previousPage,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchLocations value)? searchLocations,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_PreviousPage value)? previousPage,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchLocations value)? searchLocations,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_PreviousPage value)? previousPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class _NextPage implements LocationsListEvent {
  const factory _NextPage() = _$NextPageImpl;
}

/// @nodoc
abstract class _$$PreviousPageImplCopyWith<$Res> {
  factory _$$PreviousPageImplCopyWith(
          _$PreviousPageImpl value, $Res Function(_$PreviousPageImpl) then) =
      __$$PreviousPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviousPageImplCopyWithImpl<$Res>
    extends _$LocationsListEventCopyWithImpl<$Res, _$PreviousPageImpl>
    implements _$$PreviousPageImplCopyWith<$Res> {
  __$$PreviousPageImplCopyWithImpl(
      _$PreviousPageImpl _value, $Res Function(_$PreviousPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PreviousPageImpl implements _PreviousPage {
  const _$PreviousPageImpl();

  @override
  String toString() {
    return 'LocationsListEvent.previousPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PreviousPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchLocations,
    required TResult Function() nextPage,
    required TResult Function() previousPage,
  }) {
    return previousPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchLocations,
    TResult? Function()? nextPage,
    TResult? Function()? previousPage,
  }) {
    return previousPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchLocations,
    TResult Function()? nextPage,
    TResult Function()? previousPage,
    required TResult orElse(),
  }) {
    if (previousPage != null) {
      return previousPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchLocations value) searchLocations,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_PreviousPage value) previousPage,
  }) {
    return previousPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchLocations value)? searchLocations,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_PreviousPage value)? previousPage,
  }) {
    return previousPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchLocations value)? searchLocations,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_PreviousPage value)? previousPage,
    required TResult orElse(),
  }) {
    if (previousPage != null) {
      return previousPage(this);
    }
    return orElse();
  }
}

abstract class _PreviousPage implements LocationsListEvent {
  const factory _PreviousPage() = _$PreviousPageImpl;
}

/// @nodoc
mixin _$LocationsListState {
  ResultState<List<LocationMetadataModel>> get fetchLocationsResult =>
      throw _privateConstructorUsedError;
  String? get searchText => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get itemCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationsListStateCopyWith<LocationsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsListStateCopyWith<$Res> {
  factory $LocationsListStateCopyWith(
          LocationsListState value, $Res Function(LocationsListState) then) =
      _$LocationsListStateCopyWithImpl<$Res, LocationsListState>;
  @useResult
  $Res call(
      {ResultState<List<LocationMetadataModel>> fetchLocationsResult,
      String? searchText,
      int currentPage,
      int itemCount});

  $ResultStateCopyWith<List<LocationMetadataModel>, $Res>
      get fetchLocationsResult;
}

/// @nodoc
class _$LocationsListStateCopyWithImpl<$Res, $Val extends LocationsListState>
    implements $LocationsListStateCopyWith<$Res> {
  _$LocationsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchLocationsResult = null,
    Object? searchText = freezed,
    Object? currentPage = null,
    Object? itemCount = null,
  }) {
    return _then(_value.copyWith(
      fetchLocationsResult: null == fetchLocationsResult
          ? _value.fetchLocationsResult
          : fetchLocationsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<List<LocationMetadataModel>>,
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<List<LocationMetadataModel>, $Res>
      get fetchLocationsResult {
    return $ResultStateCopyWith<List<LocationMetadataModel>, $Res>(
        _value.fetchLocationsResult, (value) {
      return _then(_value.copyWith(fetchLocationsResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationsListStateImplCopyWith<$Res>
    implements $LocationsListStateCopyWith<$Res> {
  factory _$$LocationsListStateImplCopyWith(_$LocationsListStateImpl value,
          $Res Function(_$LocationsListStateImpl) then) =
      __$$LocationsListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResultState<List<LocationMetadataModel>> fetchLocationsResult,
      String? searchText,
      int currentPage,
      int itemCount});

  @override
  $ResultStateCopyWith<List<LocationMetadataModel>, $Res>
      get fetchLocationsResult;
}

/// @nodoc
class __$$LocationsListStateImplCopyWithImpl<$Res>
    extends _$LocationsListStateCopyWithImpl<$Res, _$LocationsListStateImpl>
    implements _$$LocationsListStateImplCopyWith<$Res> {
  __$$LocationsListStateImplCopyWithImpl(_$LocationsListStateImpl _value,
      $Res Function(_$LocationsListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchLocationsResult = null,
    Object? searchText = freezed,
    Object? currentPage = null,
    Object? itemCount = null,
  }) {
    return _then(_$LocationsListStateImpl(
      fetchLocationsResult: null == fetchLocationsResult
          ? _value.fetchLocationsResult
          : fetchLocationsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<List<LocationMetadataModel>>,
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LocationsListStateImpl implements _LocationsListState {
  const _$LocationsListStateImpl(
      {this.fetchLocationsResult = const Initial(),
      this.searchText,
      this.currentPage = 1,
      this.itemCount = 0});

  @override
  @JsonKey()
  final ResultState<List<LocationMetadataModel>> fetchLocationsResult;
  @override
  final String? searchText;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int itemCount;

  @override
  String toString() {
    return 'LocationsListState(fetchLocationsResult: $fetchLocationsResult, searchText: $searchText, currentPage: $currentPage, itemCount: $itemCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsListStateImpl &&
            (identical(other.fetchLocationsResult, fetchLocationsResult) ||
                other.fetchLocationsResult == fetchLocationsResult) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fetchLocationsResult, searchText, currentPage, itemCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsListStateImplCopyWith<_$LocationsListStateImpl> get copyWith =>
      __$$LocationsListStateImplCopyWithImpl<_$LocationsListStateImpl>(
          this, _$identity);
}

abstract class _LocationsListState implements LocationsListState {
  const factory _LocationsListState(
      {final ResultState<List<LocationMetadataModel>> fetchLocationsResult,
      final String? searchText,
      final int currentPage,
      final int itemCount}) = _$LocationsListStateImpl;

  @override
  ResultState<List<LocationMetadataModel>> get fetchLocationsResult;
  @override
  String? get searchText;
  @override
  int get currentPage;
  @override
  int get itemCount;
  @override
  @JsonKey(ignore: true)
  _$$LocationsListStateImplCopyWith<_$LocationsListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
