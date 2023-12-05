part of 'user_accounts_logout_user_cubit.dart';

@freezed
class UserAccountsLogoutUserState with _$UserAccountsLogoutUserState {
  const factory UserAccountsLogoutUserState.initial({
    @Default(BooleanStatus.initial) BooleanStatus logoutStatus,
  }) = _Initial;
}
