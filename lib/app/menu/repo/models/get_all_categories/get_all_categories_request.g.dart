// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_categories_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllCategoriesRequest _$GetAllCategoriesRequestFromJson(
        Map<String, dynamic> json) =>
    GetAllCategoriesRequest(
      status: json['status'] as String?,
      category_description: json['category_description'] as String?,
      category_name: json['category_name'] as String?,
      is_sub_category: json['is_sub_category'] as String?,
      parent_category_id: json['parent_category_id'] as String?,
    );

Map<String, dynamic> _$GetAllCategoriesRequestToJson(
        GetAllCategoriesRequest instance) =>
    <String, dynamic>{
      'status': instance.status,
      'category_name': instance.category_name,
      'category_description': instance.category_description,
      'parent_category_id': instance.parent_category_id,
      'is_sub_category': instance.is_sub_category,
    };
