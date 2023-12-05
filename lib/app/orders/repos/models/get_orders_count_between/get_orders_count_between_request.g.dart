// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_orders_count_between_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrdersCountBetweenRequest _$GetOrdersCountBetweenRequestFromJson(
        Map<String, dynamic> json) =>
    GetOrdersCountBetweenRequest(
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
    );

Map<String, dynamic> _$GetOrdersCountBetweenRequestToJson(
        GetOrdersCountBetweenRequest instance) =>
    <String, dynamic>{
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
    };
