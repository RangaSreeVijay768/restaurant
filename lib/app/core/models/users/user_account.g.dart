// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAccount _$UserAccountFromJson(Map<String, dynamic> json) => UserAccount(
      accountId: json['account_id'] as String?,
      accountStatus: json['account_status'] as String?,
      accountType: json['account_type'] as String?,
      displayName: json['display_name'] as String?,
      emailId: json['email_id'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$UserAccountToJson(UserAccount instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'account_status': instance.accountStatus,
      'account_type': instance.accountType,
      'display_name': instance.displayName,
      'email_id': instance.emailId,
      'phone_number': instance.phoneNumber,
    };
