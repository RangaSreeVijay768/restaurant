import 'package:json_annotation/json_annotation.dart';

part 'user_account.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UserAccount {
  String? accountId;
  String? accountStatus;
  String? accountType;
  String? displayName;
  String? emailId;
  String? phoneNumber;

  factory UserAccount.fromJson(Map<String, dynamic> json) =>
      _$UserAccountFromJson(json);

  Map<String, dynamic> toJson() => _$UserAccountToJson(this);

  UserAccount({
     this.accountId,
     this.accountStatus,
     this.accountType,
    this.displayName,
    this.emailId,
    this.phoneNumber,
  });
}
