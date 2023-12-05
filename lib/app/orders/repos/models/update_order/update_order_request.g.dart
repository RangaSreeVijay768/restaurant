// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateOrderRequest _$UpdateOrderRequestFromJson(Map<String, dynamic> json) =>
    UpdateOrderRequest(
      itemQuantity: json['item_quantity'] as int?,
      amount: json['amount'] as int?,
      orderId: json['order_id'] as String?,
    );

Map<String, dynamic> _$UpdateOrderRequestToJson(UpdateOrderRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'item_quantity': instance.itemQuantity,
      'order_id': instance.orderId,
    };
