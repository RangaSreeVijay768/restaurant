part of 'user_accounts_signin_form_cubit.dart';

@freezed
class UserAccountsSigninFormState with _$UserAccountsSigninFormState {
  const factory UserAccountsSigninFormState.initial({
    @Default(ControlStatus.pending)ControlStatus formValid,
    SignInResponse? signInResponse,
    @Default(BooleanStatus.initial) BooleanStatus signInStatus,
  }) = _Initial;
}
