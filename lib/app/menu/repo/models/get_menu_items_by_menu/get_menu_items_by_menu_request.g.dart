// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_menu_items_by_menu_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMenuItemsByMenuRequest _$GetMenuItemsByMenuRequestFromJson(
        Map<String, dynamic> json) =>
    GetMenuItemsByMenuRequest(
      menu: json['menu'] as String?,
      filterMenuItemName: json['filter_menu_item_name'] as String?,
      status: json['status'] as String?,
      first: json['first'] as int?,
      count: json['count'] as int?,
      columnName: json['column_name'] as String?,
      columnOrder: json['column_order'] as String?,
    );

Map<String, dynamic> _$GetMenuItemsByMenuRequestToJson(
        GetMenuItemsByMenuRequest instance) =>
    <String, dynamic>{
      'first': instance.first,
      'count': instance.count,
      'column_name': instance.columnName,
      'column_order': instance.columnOrder,
      'menu': instance.menu,
      'status': instance.status,
      'filter_menu_item_name': instance.filterMenuItemName,
    };
