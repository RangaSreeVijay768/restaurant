// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    SignUpResponse(
      status: json['status'] as String,
      userAccount:
          UserAccount.fromJson(json['user_account'] as Map<String, dynamic>),
      userAuthToken: json['user_auth_token'] as String,
      userAuthTokenId: json['user_auth_token_id'] as String,
    );

Map<String, dynamic> _$SignUpResponseToJson(SignUpResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'user_account': instance.userAccount,
      'user_auth_token': instance.userAuthToken,
      'user_auth_token_id': instance.userAuthTokenId,
    };
