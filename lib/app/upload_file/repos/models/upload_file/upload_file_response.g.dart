// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_file_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadFileResponse _$UploadFileResponseFromJson(Map<String, dynamic> json) =>
    UploadFileResponse(
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      fileExtension: json['file_extension'] as String?,
      fileLink: json['file_link'] as String?,
      fileName: json['file_name'] as String?,
      filePath: json['file_path'] as String?,
      fileServiceData: json['file_service_data'] as String?,
      fileSize: json['file_size'] as num?,
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
      storageType: json['storage_type'] as String?,
      userAccount: json['user_account'] == null
          ? null
          : UserAccount.fromJson(json['user_account'] as Map<String, dynamic>),
      uploadedFileId: json['uploaded_file_id'] as String?,
    );

Map<String, dynamic> _$UploadFileResponseToJson(UploadFileResponse instance) =>
    <String, dynamic>{
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'file_extension': instance.fileExtension,
      'file_link': instance.fileLink,
      'file_name': instance.fileName,
      'file_path': instance.filePath,
      'file_service_data': instance.fileServiceData,
      'file_size': instance.fileSize,
      'storage_type': instance.storageType,
      'uploaded_file_id': instance.uploadedFileId,
      'user_account': instance.userAccount,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

UserAccount _$UserAccountFromJson(Map<String, dynamic> json) => UserAccount(
      accountId: json['account_id'] as String?,
      accountStatus: json['account_status'] as String?,
      accountType: json['account_type'] as String?,
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      displayName: json['display_name'] as String?,
      emailId: json['email_id'] as String?,
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
      phoneNumber: json['phone_number'] == null
          ? null
          : PhoneNumber.fromJson(json['phone_number'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserAccountToJson(UserAccount instance) =>
    <String, dynamic>{
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'account_id': instance.accountId,
      'account_status': instance.accountStatus,
      'account_type': instance.accountType,
      'display_name': instance.displayName,
      'email_id': instance.emailId,
      'phone_number': instance.phoneNumber,
    };

PhoneNumber _$PhoneNumberFromJson(Map<String, dynamic> json) => PhoneNumber(
      countryCode: json['country_code'] as num?,
      countryCodeSource: json['country_code_source'] as String?,
      extension: json['extension'] as String?,
      italianLeadingZero: json['italian_leading_zero'] as bool?,
      nationalNumber: json['national_number'] as num?,
      numberOfLeadingZeros: json['number_of_leading_zeros'] as num?,
      preferredDomesticCarrierCode:
          json['preferred_domestic_carrier_code'] as String?,
      rawInput: json['raw_input'] as String?,
    );

Map<String, dynamic> _$PhoneNumberToJson(PhoneNumber instance) =>
    <String, dynamic>{
      'country_code': instance.countryCode,
      'country_code_source': instance.countryCodeSource,
      'extension': instance.extension,
      'italian_leading_zero': instance.italianLeadingZero,
      'national_number': instance.nationalNumber,
      'number_of_leading_zeros': instance.numberOfLeadingZeros,
      'preferred_domestic_carrier_code': instance.preferredDomesticCarrierCode,
      'raw_input': instance.rawInput,
    };
