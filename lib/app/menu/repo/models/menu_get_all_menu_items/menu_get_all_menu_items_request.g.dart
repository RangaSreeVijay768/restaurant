// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_get_all_menu_items_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuGetAllMenuItemsRequest _$MenuGetAllMenuItemsRequestFromJson(
        Map<String, dynamic> json) =>
    MenuGetAllMenuItemsRequest(
      status: json['status'] as String?,
      menuItemDescription: json['menu_item_description'] as String?,
      menuItemId: json['menu_item_id'] as String?,
      menuItemName: json['menu_item_name'] as String?,
    )
      ..first = json['first'] as int?
      ..count = json['count'] as int?
      ..columnName = json['column_name'] as String?
      ..columnOrder = json['column_order'] as String?;

Map<String, dynamic> _$MenuGetAllMenuItemsRequestToJson(
        MenuGetAllMenuItemsRequest instance) =>
    <String, dynamic>{
      'first': instance.first,
      'count': instance.count,
      'column_name': instance.columnName,
      'column_order': instance.columnOrder,
      'menu_item_description': instance.menuItemDescription,
      'menu_item_id': instance.menuItemId,
      'menu_item_name': instance.menuItemName,
      'status': instance.status,
    };
