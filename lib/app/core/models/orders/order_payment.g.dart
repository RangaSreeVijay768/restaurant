// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderPayment _$OrderPaymentFromJson(Map<String, dynamic> json) => OrderPayment(
      paymentGatewayDataJsonString:
          json['payment_gateway_data_json_string'] as String?,
      orderPaymentId: json['order_payment_id'] as String?,
      paymentGatewayId: json['payment_gateway_id'] as String?,
      paymentGatewayStatus: json['payment_gateway_status'] as String?,
      paymentGateway: json['payment_gateway'] as String?,
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$OrderPaymentToJson(OrderPayment instance) =>
    <String, dynamic>{
      'order_payment_id': instance.orderPaymentId,
      'payment_gateway': instance.paymentGateway,
      'payment_gateway_data_json_string': instance.paymentGatewayDataJsonString,
      'payment_gateway_id': instance.paymentGatewayId,
      'payment_gateway_status': instance.paymentGatewayStatus,
      'status': instance.status,
      'order': instance.order,
    };
