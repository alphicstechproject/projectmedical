part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required GetAuthenticationState getAuthenticationState,
    required String nameField,
    required String passwordField,
    required bool isRemember,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        getAuthenticationState: GetAuthenticationState.initial(),
        nameField: '',
        passwordField: '',
        isRemember: false,
      );
}

@freezed
class GetAuthenticationState with _$GetAuthenticationState {
  const factory GetAuthenticationState.initial() =
      _GetAuthenticationStateInitial;
  const factory GetAuthenticationState.inProgress() =
      _GetAuthenticationStateinProgress;
  const factory GetAuthenticationState.success({
    required String success,
  }) = _GetAuthenticationStateSuccess;
  const factory GetAuthenticationState.failed({
    required String failed,
  }) = _GetAuthenticationStateFailed;
  const factory GetAuthenticationState.warning() =
      _GetAuthenticationStateWarning;
}
