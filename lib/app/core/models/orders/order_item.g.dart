// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
      json['item_amount'] as num?,
      json['item_quantity'] as int?,
      json['menu_item'] == null
          ? null
          : MenuItem.fromJson(json['menu_item'] as Map<String, dynamic>),
      json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      json['order_item_id'] as String?,
      json['status'] as String?,
      json['item_delivery_status'] as String?,
    );

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) => <String, dynamic>{
      'item_amount': instance.itemAmount,
      'item_quantity': instance.itemQuantity,
      'menu_item': instance.menuItem,
      'order': instance.order,
      'order_item_id': instance.orderItemId,
      'status': instance.status,
      'item_delivery_status': instance.itemDeliveryStatus,
    };
