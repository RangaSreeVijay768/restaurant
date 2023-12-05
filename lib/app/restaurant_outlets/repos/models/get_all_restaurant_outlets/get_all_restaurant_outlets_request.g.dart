// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_restaurant_outlets_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllRestaurantOutletsRequest _$GetAllRestaurantOutletsRequestFromJson(
        Map<String, dynamic> json) =>
    GetAllRestaurantOutletsRequest(
      status: json['status'] as String?,
      columnName: json['column_name'] as String?,
      columnOrder: json['column_order'] as String?,
      first: json['first'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$GetAllRestaurantOutletsRequestToJson(
        GetAllRestaurantOutletsRequest instance) =>
    <String, dynamic>{
      'first': instance.first,
      'count': instance.count,
      'column_name': instance.columnName,
      'column_order': instance.columnOrder,
      'status': instance.status,
    };
