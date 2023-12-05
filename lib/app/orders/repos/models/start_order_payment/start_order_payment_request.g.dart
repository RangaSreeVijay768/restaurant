// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_order_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StartOrderPaymentRequest _$StartOrderPaymentRequestFromJson(
        Map<String, dynamic> json) =>
    StartOrderPaymentRequest(
      order: json['order'] as String?,
      paymentGateway: json['payment_gateway'],
    );

Map<String, dynamic> _$StartOrderPaymentRequestToJson(
        StartOrderPaymentRequest instance) =>
    <String, dynamic>{
      'order': instance.order,
      'payment_gateway': instance.paymentGateway,
    };
