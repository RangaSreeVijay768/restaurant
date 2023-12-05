// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_image_by_entity_id_and_image_type_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetImageByEntityIdAndImageTypeRequest
    _$GetImageByEntityIdAndImageTypeRequestFromJson(
            Map<String, dynamic> json) =>
        GetImageByEntityIdAndImageTypeRequest(
          entity: json['entity'] as String?,
          imageType: json['image_type'] as String?,
        );

Map<String, dynamic> _$GetImageByEntityIdAndImageTypeRequestToJson(
        GetImageByEntityIdAndImageTypeRequest instance) =>
    <String, dynamic>{
      'entity': instance.entity,
      'image_type': instance.imageType,
    };
