import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/models/users/user_auth_token.dart';
import 'package:restaurant_pos/app/core/models/users/user_account.dart';

part 'sign_in_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
@JsonSerializable()
class SignInResponse extends UserAuthToken {

	factory SignInResponse.fromJson(Map<String, dynamic> json) => _$SignInResponseFromJson(json);


  SignInResponse(
      {
      required super.status,
      required super.userAccount,
      required super.userAuthToken,
      required super.userAuthTokenId});

}
