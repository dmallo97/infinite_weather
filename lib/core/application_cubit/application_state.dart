part of 'application_cubit.dart';

@freezed
class ApplicationState with _$ApplicationState {
  const factory ApplicationState({
    String? customerLoggedIn,
    @Default(true) bool showDefaultAppBar,
  }) = _ApplicationState;
}
