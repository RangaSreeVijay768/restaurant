// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_menu_items_by_menu_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMenuItemsByMenuResponse _$GetMenuItemsByMenuResponseFromJson(
        Map<String, dynamic> json) =>
    GetMenuItemsByMenuResponse()
      ..menuItemDescription = json['menu_item_description'] as String?
      ..menuItemId = json['menu_item_id'] as String?
      ..menuItemName = json['menu_item_name'] as String?
      ..status = json['status'] as String?
      ..price = json['price'] as num?;

Map<String, dynamic> _$GetMenuItemsByMenuResponseToJson(
        GetMenuItemsByMenuResponse instance) =>
    <String, dynamic>{
      'menu_item_description': instance.menuItemDescription,
      'menu_item_id': instance.menuItemId,
      'menu_item_name': instance.menuItemName,
      'status': instance.status,
      'price': instance.price,
    };
