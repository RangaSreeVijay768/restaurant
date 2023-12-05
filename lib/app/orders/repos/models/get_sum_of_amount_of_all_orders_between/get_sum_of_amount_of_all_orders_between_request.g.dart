// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_sum_of_amount_of_all_orders_between_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSumOfAmountOfAllOrdersBetweenRequest
    _$GetSumOfAmountOfAllOrdersBetweenRequestFromJson(
            Map<String, dynamic> json) =>
        GetSumOfAmountOfAllOrdersBetweenRequest(
          startTime: json['start_time'] == null
              ? null
              : DateTime.parse(json['start_time'] as String),
          endTime: json['end_time'] == null
              ? null
              : DateTime.parse(json['end_time'] as String),
        );

Map<String, dynamic> _$GetSumOfAmountOfAllOrdersBetweenRequestToJson(
        GetSumOfAmountOfAllOrdersBetweenRequest instance) =>
    <String, dynamic>{
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
    };
