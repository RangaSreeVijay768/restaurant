// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuItemCategory _$MenuItemCategoryFromJson(Map<String, dynamic> json) =>
    MenuItemCategory(
      json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      json['menuItem'] == null
          ? null
          : MenuItem.fromJson(json['menuItem'] as Map<String, dynamic>),
      json['menuItemCategoryId'] as String?,
    );

Map<String, dynamic> _$MenuItemCategoryToJson(MenuItemCategory instance) =>
    <String, dynamic>{
      'category': instance.category,
      'menuItem': instance.menuItem,
      'menuItemCategoryId': instance.menuItemCategoryId,
    };
