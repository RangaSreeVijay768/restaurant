import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SignUpRequest {
  String? displayName;
  String? email;
  String? password;
  String? phoneNumber;

  SignUpRequest({this.displayName, this.email, this.password, this.phoneNumber});

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => _$SignUpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpRequestToJson(this);
}

