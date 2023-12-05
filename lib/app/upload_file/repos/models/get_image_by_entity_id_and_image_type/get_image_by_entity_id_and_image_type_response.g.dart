// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_image_by_entity_id_and_image_type_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetImageByEntityIdAndImageTypeResponse
    _$GetImageByEntityIdAndImageTypeResponseFromJson(
            Map<String, dynamic> json) =>
        GetImageByEntityIdAndImageTypeResponse()
          ..imageId = json['image_id'] as String?
          ..imageType = json['image_type'] as String?
          ..reference = json['reference'] as String?
          ..uploadedFile = json['uploaded_file'] == null
              ? null
              : UploadedFile.fromJson(
                  json['uploaded_file'] as Map<String, dynamic>);

Map<String, dynamic> _$GetImageByEntityIdAndImageTypeResponseToJson(
        GetImageByEntityIdAndImageTypeResponse instance) =>
    <String, dynamic>{
      'image_id': instance.imageId,
      'image_type': instance.imageType,
      'reference': instance.reference,
      'uploaded_file': instance.uploadedFile,
    };
