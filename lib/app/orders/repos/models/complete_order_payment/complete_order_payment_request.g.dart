// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_order_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompleteOrderPaymentRequest _$CompleteOrderPaymentRequestFromJson(
        Map<String, dynamic> json) =>
    CompleteOrderPaymentRequest(
      orderPayment: json['order_payment'] as String?,
    );

Map<String, dynamic> _$CompleteOrderPaymentRequestToJson(
        CompleteOrderPaymentRequest instance) =>
    <String, dynamic>{
      'order_payment': instance.orderPayment,
    };
