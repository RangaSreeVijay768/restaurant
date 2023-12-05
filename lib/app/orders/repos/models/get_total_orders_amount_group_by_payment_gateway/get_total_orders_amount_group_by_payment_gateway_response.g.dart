// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_total_orders_amount_group_by_payment_gateway_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTotalOrdersAmountGroupByPaymentGatewayResponse
    _$GetTotalOrdersAmountGroupByPaymentGatewayResponseFromJson(
            Map<String, dynamic> json) =>
        GetTotalOrdersAmountGroupByPaymentGatewayResponse(
          name: json['name'] as String?,
          count: (json['count'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$GetTotalOrdersAmountGroupByPaymentGatewayResponseToJson(
        GetTotalOrdersAmountGroupByPaymentGatewayResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'name': instance.name,
    };
