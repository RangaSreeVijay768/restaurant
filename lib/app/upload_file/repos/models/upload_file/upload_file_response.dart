import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/common/base_entity.dart';
import 'package:restaurant_pos/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'upload_file_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UploadFileResponse extends BaseEntity {
  String? fileExtension;
  String? fileLink;
  String? fileName;
  String? filePath;
  String? fileServiceData;
  num? fileSize;
  String? storageType;
  String? uploadedFileId;
  UserAccount? userAccount;

  UploadFileResponse(
      {super.createdTime,
      this.fileExtension,
      this.fileLink,
      this.fileName,
      this.filePath,
      this.fileServiceData,
      this.fileSize,
      super.lastUpdatedTime,
      this.storageType,
      this.userAccount,
      this.uploadedFileId});

  factory UploadFileResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadFileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UploadFileResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UserAccount extends BaseEntity {
  String? accountId;
  String? accountStatus;
  String? accountType;
  String? displayName;
  String? emailId;
  PhoneNumber? phoneNumber;

  UserAccount(
      {this.accountId,
      this.accountStatus,
      this.accountType,
      super.createdTime,
      this.displayName,
      this.emailId,
      super.lastUpdatedTime,
      this.phoneNumber});

  factory UserAccount.fromJson(Map<String, dynamic> json) =>
      _$UserAccountFromJson(json);

  Map<String, dynamic> toJson() => _$UserAccountToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PhoneNumber {
  num? countryCode;
  String? countryCodeSource;
  String? extension;
  bool? italianLeadingZero;
  num? nationalNumber;
  num? numberOfLeadingZeros;
  String? preferredDomesticCarrierCode;
  String? rawInput;

  PhoneNumber(
      {this.countryCode,
      this.countryCodeSource,
      this.extension,
      this.italianLeadingZero,
      this.nationalNumber,
      this.numberOfLeadingZeros,
      this.preferredDomesticCarrierCode,
      this.rawInput});

  factory PhoneNumber.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneNumberToJson(this);
}
