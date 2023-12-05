// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_menu_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateMenuItemRequest _$CreateMenuItemRequestFromJson(
        Map<String, dynamic> json) =>
    CreateMenuItemRequest(
      menuItemDescription: json['menu_item_description'] as String?,
      menuItemName: json['menu_item_name'] as String?,
      price: json['price'] as num?,
      menu: json['menu'] as String?,
    );

Map<String, dynamic> _$CreateMenuItemRequestToJson(
        CreateMenuItemRequest instance) =>
    <String, dynamic>{
      'menu_item_description': instance.menuItemDescription,
      'menu_item_name': instance.menuItemName,
      'menu': instance.menu,
      'price': instance.price,
    };
