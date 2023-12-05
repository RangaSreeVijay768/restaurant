// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_order_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompleteOrderPaymentResponse _$CompleteOrderPaymentResponseFromJson(
        Map<String, dynamic> json) =>
    CompleteOrderPaymentResponse(
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      orderPayments: (json['order_payments'] as List<dynamic>?)
          ?.map((e) => OrderPayment.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderItems: (json['order_items'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompleteOrderPaymentResponseToJson(
        CompleteOrderPaymentResponse instance) =>
    <String, dynamic>{
      'order': instance.order,
      'order_items': instance.orderItems,
      'order_payments': instance.orderPayments,
    };
