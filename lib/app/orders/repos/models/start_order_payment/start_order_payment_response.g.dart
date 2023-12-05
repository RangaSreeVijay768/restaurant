// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_order_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StartOrderPaymentResponse _$StartOrderPaymentResponseFromJson(
        Map<String, dynamic> json) =>
    StartOrderPaymentResponse()
      ..order = json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>)
      ..orderItems = (json['order_items'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList()
      ..orderPayments = (json['order_payments'] as List<dynamic>?)
          ?.map((e) => OrderPayment.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$StartOrderPaymentResponseToJson(
        StartOrderPaymentResponse instance) =>
    <String, dynamic>{
      'order': instance.order,
      'order_items': instance.orderItems,
      'order_payments': instance.orderPayments,
    };
