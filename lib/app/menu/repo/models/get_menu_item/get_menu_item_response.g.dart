// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_menu_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMenuItemResponse _$GetMenuItemResponseFromJson(Map<String, dynamic> json) =>
    GetMenuItemResponse()
      ..menuItemDescription = json['menu_item_description'] as String?
      ..menuItemId = json['menu_item_id'] as String?
      ..menuItemName = json['menu_item_name'] as String?
      ..status = json['status'] as String?
      ..price = json['price'] as num?;

Map<String, dynamic> _$GetMenuItemResponseToJson(
        GetMenuItemResponse instance) =>
    <String, dynamic>{
      'menu_item_description': instance.menuItemDescription,
      'menu_item_id': instance.menuItemId,
      'menu_item_name': instance.menuItemName,
      'status': instance.status,
      'price': instance.price,
    };
