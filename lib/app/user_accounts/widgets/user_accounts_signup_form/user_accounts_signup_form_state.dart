part of 'user_accounts_signup_form_cubit.dart';

@freezed
class UserAccountsSignupFormState with _$UserAccountsSignupFormState {
  const factory UserAccountsSignupFormState.initial({
    @Default(ControlStatus.pending)ControlStatus formValid,
    SignUpResponse? signUpResponse,
    @Default(BooleanStatus.initial)BooleanStatus signUpStatus
}) = _Initial;
}
