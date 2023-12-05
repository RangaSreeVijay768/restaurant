import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant_pos/app/core/models/users/user_auth_token.dart';
import 'package:restaurant_pos/app/user_accounts/repos/models/sign_in/sign_in_request.dart';
import 'package:restaurant_pos/app/user_accounts/repos/models/sign_in/sign_in_response.dart';
import 'package:restaurant_pos/app/user_accounts/repos/models/sign_up/sign_up_request.dart';
import 'package:restaurant_pos/app/user_accounts/repos/user_accounts_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../repos/models/sign_up/sign_up_response.dart';

@singleton
class UserAccountsService {
  late UserAccountsRepo userAccountsRepo;

  UserAccountsService() {
    this.userAccountsRepo = GetIt.instance<UserAccountsRepo>();
  }

  Future<SignInResponse> signIn(SignInRequest signInRequest) {
    return userAccountsRepo.signIn(signInRequest);
  }

  Future<SignUpResponse> signUp(SignUpRequest signUpRequest) {
    return userAccountsRepo.signUp(signUpRequest);
  }

  Future<bool> saveUserAuthTokenToSharedPreference(
      UserAuthToken userAuthToken) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.setString(
        "userAuthToken", jsonEncode(userAuthToken.toJson()));
  }

  Future<bool> deleteUserAuthTokenFromSharedPreferences() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.remove("userAuthToken");
  }

}
