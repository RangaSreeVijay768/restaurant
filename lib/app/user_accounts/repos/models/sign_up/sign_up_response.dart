import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/models/users/user_auth_token.dart';

import '../../../../core/models/users/user_account.dart';

part 'sign_up_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SignUpResponse extends UserAuthToken {

    factory SignUpResponse.fromJson(Map<String, dynamic> json) => _$SignUpResponseFromJson(json);

  SignUpResponse(
      {      required super.status,
      required super.userAccount,
      required super.userAuthToken,
      required super.userAuthTokenId});
}
