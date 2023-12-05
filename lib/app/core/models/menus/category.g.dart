// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      categoryDescription: json['category_description'] as String?,
      categoryId: json['category_id'] as String?,
      categoryName: json['category_name'] as String?,
      isSubCategory: json['is_sub_category'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'category_description': instance.categoryDescription,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'is_sub_category': instance.isSubCategory,
      'status': instance.status,
    };
