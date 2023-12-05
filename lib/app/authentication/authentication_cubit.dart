import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/authentication/authentication_utils.dart';
import 'package:restaurant_pos/app/core/blocs/base_cubit.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/core/models/users/user_account.dart';
import 'package:restaurant_pos/app/core/models/users/user_auth_token.dart';

part 'authentication_cubit.freezed.dart';
part 'authentication_state.dart';

class AuthenticationCubit extends BaseCubit<AuthenticationState> {
  AuthenticationCubit({required super.context})
      : super(initialState: AuthenticationState.initial()) {
    getUserAuthTokenFromSharedPreferences();
  }

  Future<UserAuthToken?> getUserAuthTokenFromSharedPreferences() async {
    UserAuthToken? userAuthToken =
        await AuthenticationUtils.getUserAuthTokenFromSharedPreferences();
    if (userAuthToken != null) {
      emit(state.copyWith(
          userAccount: userAuthToken.userAccount,
          userAuthToken: userAuthToken,
          authenticationStatus: BooleanStatus.success));
    } else {
      emit(state.copyWith(authenticationStatus: BooleanStatus.error));
    }
    return Future.value(userAuthToken);
  }

  Future<bool> saveUserAuthToken(UserAuthToken userAuthToken) async {
    emit(state.copyWith(
        userAuthToken: userAuthToken,
        userAccount: userAuthToken.userAccount,
        authenticationStatus: BooleanStatus.success));
    return Future.value(true);
  }
}
