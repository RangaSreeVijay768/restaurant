// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_get_all_menu_items_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuGetAllMenuItemsResponse _$MenuGetAllMenuItemsResponseFromJson(
        Map<String, dynamic> json) =>
    MenuGetAllMenuItemsResponse(
      menuItemDescription: json['menu_item_description'] as String?,
      menuItemId: json['menu_item_id'] as String?,
      menuItemName: json['menu_item_name'] as String?,
      status: json['status'] as String?,
    )..price = json['price'] as num?;

Map<String, dynamic> _$MenuGetAllMenuItemsResponseToJson(
        MenuGetAllMenuItemsResponse instance) =>
    <String, dynamic>{
      'menu_item_description': instance.menuItemDescription,
      'menu_item_id': instance.menuItemId,
      'menu_item_name': instance.menuItemName,
      'status': instance.status,
      'price': instance.price,
    };
