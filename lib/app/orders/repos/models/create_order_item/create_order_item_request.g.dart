// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrderItemRequest _$CreateOrderItemRequestFromJson(
        Map<String, dynamic> json) =>
    CreateOrderItemRequest(
      orderId: json['order_id'] as String?,
      menuItemId: json['menu_item_id'] as String?,
      itemQuantity: json['item_quantity'] as int?,
      itemAmount: json['item_amount'] as num?,
    );

Map<String, dynamic> _$CreateOrderItemRequestToJson(
        CreateOrderItemRequest instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'menu_item_id': instance.menuItemId,
      'item_quantity': instance.itemQuantity,
      'item_amount': instance.itemAmount,
    };
