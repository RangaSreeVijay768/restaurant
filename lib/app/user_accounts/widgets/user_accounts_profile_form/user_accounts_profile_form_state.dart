part of 'user_accounts_profile_form_cubit.dart';

@freezed
class UserAccountsProfileFormState with _$UserAccountsProfileFormState {
  const factory UserAccountsProfileFormState.initial({
    @Default(ControlStatus.pending) ControlStatus formValid,
    required String restaurantName,
    required String address,
}) = _Initial;
}
