// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attach_image_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttachImageRequest _$AttachImageRequestFromJson(Map<String, dynamic> json) =>
    AttachImageRequest(
      imageType: json['image_type'] as String?,
      entity: json['entity'] as String?,
      fileId: json['file_id'] as String?,
    );

Map<String, dynamic> _$AttachImageRequestToJson(AttachImageRequest instance) =>
    <String, dynamic>{
      'image_type': instance.imageType,
      'entity': instance.entity,
      'file_id': instance.fileId,
    };
