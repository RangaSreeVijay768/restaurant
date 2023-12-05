// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurant_outlet_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRestaurantOutletInfoRequest _$GetRestaurantOutletInfoRequestFromJson(
        Map<String, dynamic> json) =>
    GetRestaurantOutletInfoRequest(
      restaurantOutletId: json['restaurant_outlet_id'] as String?,
      first: json['first'] as int?,
      count: json['count'] as int?,
      columnName: json['column_name'] as String?,
      columnOrder: json['column_order'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$GetRestaurantOutletInfoRequestToJson(
        GetRestaurantOutletInfoRequest instance) =>
    <String, dynamic>{
      'first': instance.first,
      'count': instance.count,
      'column_name': instance.columnName,
      'column_order': instance.columnOrder,
      'restaurant_outlet_id': instance.restaurantOutletId,
      'status': instance.status,
    };
