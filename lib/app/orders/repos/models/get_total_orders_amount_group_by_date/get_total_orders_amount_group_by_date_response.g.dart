// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_total_orders_amount_group_by_date_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTotalOrdersAmountGroupByDateResponse
    _$GetTotalOrdersAmountGroupByDateResponseFromJson(
            Map<String, dynamic> json) =>
        GetTotalOrdersAmountGroupByDateResponse()
          ..name = json['name'] as String?
          ..count = (json['count'] as num?)?.toDouble();

Map<String, dynamic> _$GetTotalOrdersAmountGroupByDateResponseToJson(
        GetTotalOrdersAmountGroupByDateResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'count': instance.count,
    };
