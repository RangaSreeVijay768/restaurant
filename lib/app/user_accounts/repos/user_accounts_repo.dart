import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant_pos/app/core/network/dio_client.dart';
import 'package:restaurant_pos/app/environment/env_config.dart';
import 'package:restaurant_pos/app/user_accounts/repos/models/sign_in/sign_in_request.dart';
import 'package:restaurant_pos/app/user_accounts/repos/models/sign_in/sign_in_response.dart';
import 'package:restaurant_pos/app/user_accounts/repos/models/sign_up/sign_up_request.dart';
import 'package:retrofit/http.dart';

import 'models/sign_up/sign_up_response.dart';

part 'user_accounts_repo.g.dart';

@RestApi()
abstract class UserAccountRestClient {
  factory UserAccountRestClient(Dio dio, {String baseUrl}) =
      _UserAccountRestClient;

  @POST("/accounts/signin")
  Future<SignInResponse> signIn(@Body() SignInRequest signInRequest);

  @POST("/accounts/signup")
  Future<SignUpResponse> signUp(@Body() SignUpRequest signUpRequest);

}

@singleton
class UserAccountsRepo extends RestService {
  late UserAccountRestClient userAccountRestClient;

  UserAccountsRepo() : super() {
    this.userAccountRestClient = UserAccountRestClient(getDioClient(),
        baseUrl: EnvConfig.getAppEnvironment().apiUrl!);
  }

  Future<SignInResponse> signIn(SignInRequest signInRequest) {
    return userAccountRestClient.signIn(signInRequest);
  }

  Future<SignUpResponse> signUp(SignUpRequest signUpRequest) {
    return userAccountRestClient.signUp(signUpRequest);
  }

}
