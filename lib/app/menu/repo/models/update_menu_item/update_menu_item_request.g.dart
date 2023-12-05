// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_menu_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateMenuItemRequest _$UpdateMenuItemRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateMenuItemRequest(
      menuItemDescription: json['menu_item_description'] as String?,
      menuItemName: json['menu_item_name'] as String?,
      price: json['price'] as String?,
      menuItemId: json['menu_item_id'] as String?,
    );

Map<String, dynamic> _$UpdateMenuItemRequestToJson(
        UpdateMenuItemRequest instance) =>
    <String, dynamic>{
      'menu_item_description': instance.menuItemDescription,
      'menu_item_name': instance.menuItemName,
      'price': instance.price,
      'menu_item_id': instance.menuItemId,
    };
