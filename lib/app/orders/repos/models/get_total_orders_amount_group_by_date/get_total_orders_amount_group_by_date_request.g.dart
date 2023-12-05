// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_total_orders_amount_group_by_date_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTotalOrdersAmountGroupByDateRequest
    _$GetTotalOrdersAmountGroupByDateRequestFromJson(
            Map<String, dynamic> json) =>
        GetTotalOrdersAmountGroupByDateRequest(
          endTime: json['end_time'] == null
              ? null
              : DateTime.parse(json['end_time'] as String),
          startTime: json['start_time'] == null
              ? null
              : DateTime.parse(json['start_time'] as String),
        );

Map<String, dynamic> _$GetTotalOrdersAmountGroupByDateRequestToJson(
        GetTotalOrdersAmountGroupByDateRequest instance) =>
    <String, dynamic>{
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
    };
