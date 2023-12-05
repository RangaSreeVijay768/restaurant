// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_infos_by_restaurant_outlet_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrderInfosByRestaurantOutletRequest
    _$GetOrderInfosByRestaurantOutletRequestFromJson(
            Map<String, dynamic> json) =>
        GetOrderInfosByRestaurantOutletRequest(
          restaurantOutlet: json['restaurant_outlet'] as String,
          status: json['status'] as String?,
          first: json['first'] as int?,
          count: json['count'] as int?,
          columnName: json['column_name'] as String?,
          columnOrder: json['column_order'] as String?,
        );

Map<String, dynamic> _$GetOrderInfosByRestaurantOutletRequestToJson(
        GetOrderInfosByRestaurantOutletRequest instance) =>
    <String, dynamic>{
      'first': instance.first,
      'count': instance.count,
      'column_name': instance.columnName,
      'column_order': instance.columnOrder,
      'status': instance.status,
      'restaurant_outlet': instance.restaurantOutlet,
    };
