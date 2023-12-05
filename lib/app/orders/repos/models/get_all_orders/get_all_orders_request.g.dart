// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_orders_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllOrdersRequest _$GetAllOrdersRequestFromJson(Map<String, dynamic> json) =>
    GetAllOrdersRequest(
      status: json['status'] as String?,
    )
      ..first = json['first'] as int?
      ..count = json['count'] as int?
      ..columnName = json['column_name'] as String?
      ..columnOrder = json['column_order'] as String?;

Map<String, dynamic> _$GetAllOrdersRequestToJson(
        GetAllOrdersRequest instance) =>
    <String, dynamic>{
      'first': instance.first,
      'count': instance.count,
      'column_name': instance.columnName,
      'column_order': instance.columnOrder,
      'status': instance.status,
    };
