// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_add_order_items_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersAddOrderItemsRequest _$OrdersAddOrderItemsRequestFromJson(
        Map<String, dynamic> json) =>
    OrdersAddOrderItemsRequest(
      addOrderItemsRequestItems:
          (json['add_order_items_request_items'] as List<dynamic>?)
              ?.map((e) =>
                  AddOrderItemsRequestItems.fromJson(e as Map<String, dynamic>))
              .toList(),
      orderId: json['order_id'] as String?,
    );

Map<String, dynamic> _$OrdersAddOrderItemsRequestToJson(
        OrdersAddOrderItemsRequest instance) =>
    <String, dynamic>{
      'add_order_items_request_items': instance.addOrderItemsRequestItems,
      'order_id': instance.orderId,
    };

AddOrderItemsRequestItems _$AddOrderItemsRequestItemsFromJson(
        Map<String, dynamic> json) =>
    AddOrderItemsRequestItems(
      itemAmount: json['item_amount'] as num?,
      itemQuantity: json['item_quantity'] as int?,
      menuItemId: json['menu_item_id'] as String?,
    );

Map<String, dynamic> _$AddOrderItemsRequestItemsToJson(
        AddOrderItemsRequestItems instance) =>
    <String, dynamic>{
      'item_amount': instance.itemAmount,
      'item_quantity': instance.itemQuantity,
      'menu_item_id': instance.menuItemId,
    };
