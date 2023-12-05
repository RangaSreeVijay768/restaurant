// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateOrderItemRequest _$UpdateOrderItemRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateOrderItemRequest(
      itemQuantity: json['item_quantity'] as int?,
      itemDeliveryTime: _$JsonConverterFromJson<String, DateTime?>(
          json['item_delivery_time'], const DateTimeToIsoConverter().fromJson),
      itemDeliveryStatus: json['item_delivery_status'] as String?,
      itemAmount: json['item_amount'] as num?,
      orderItemId: json['order_item_id'] as String?,
    );

Map<String, dynamic> _$UpdateOrderItemRequestToJson(
        UpdateOrderItemRequest instance) =>
    <String, dynamic>{
      'order_item_id': instance.orderItemId,
      'item_amount': instance.itemAmount,
      'item_delivery_status': instance.itemDeliveryStatus,
      'item_delivery_time':
          const DateTimeToIsoConverter().toJson(instance.itemDeliveryTime),
      'item_quantity': instance.itemQuantity,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
