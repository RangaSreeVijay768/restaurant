// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurant_outlet_infos_by_user_account_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRestaurantOutletInfosByUserAccountRequest
    _$GetRestaurantOutletInfosByUserAccountRequestFromJson(
            Map<String, dynamic> json) =>
        GetRestaurantOutletInfosByUserAccountRequest(
          status: json['status'] as String?,
          first: json['first'] as int?,
          count: json['count'] as int?,
          columnName: json['column_name'] as String?,
          columnOrder: json['column_order'] as String?,
        );

Map<String, dynamic> _$GetRestaurantOutletInfosByUserAccountRequestToJson(
        GetRestaurantOutletInfosByUserAccountRequest instance) =>
    <String, dynamic>{
      'first': instance.first,
      'count': instance.count,
      'column_name': instance.columnName,
      'column_order': instance.columnOrder,
      'status': instance.status,
    };
