// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Menu _$MenuFromJson(Map<String, dynamic> json) => Menu(
      createdBy: json['created_by'] == null
          ? null
          : UserAccount.fromJson(json['created_by'] as Map<String, dynamic>),
      menuDescription: json['menu_description'] as String?,
      menuId: json['menu_id'] as String?,
      menuName: json['menu_name'] as String?,
      status: json['status'] as String?,
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
    );

Map<String, dynamic> _$MenuToJson(Menu instance) => <String, dynamic>{
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'created_by': instance.createdBy,
      'menu_description': instance.menuDescription,
      'menu_id': instance.menuId,
      'menu_name': instance.menuName,
      'status': instance.status,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
