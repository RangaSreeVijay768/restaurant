// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_items_group_by_menu_items_and_item_quantities_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrderItemsGroupByMenuItemsAndItemQuantitiesResponse
    _$GetOrderItemsGroupByMenuItemsAndItemQuantitiesResponseFromJson(
            Map<String, dynamic> json) =>
        GetOrderItemsGroupByMenuItemsAndItemQuantitiesResponse(
          count: (json['count'] as num?)?.toDouble(),
          name: json['name'] as String?,
        );

Map<String, dynamic>
    _$GetOrderItemsGroupByMenuItemsAndItemQuantitiesResponseToJson(
            GetOrderItemsGroupByMenuItemsAndItemQuantitiesResponse instance) =>
        <String, dynamic>{
          'name': instance.name,
          'count': instance.count,
        };
