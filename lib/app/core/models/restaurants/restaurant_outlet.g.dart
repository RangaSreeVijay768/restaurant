// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_outlet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantOutlet _$RestaurantOutletFromJson(Map<String, dynamic> json) =>
    RestaurantOutlet(
      createdBy: json['created_by'] == null
          ? null
          : UserAccount.fromJson(json['created_by'] as Map<String, dynamic>),
      restaurantOutletDescription:
          json['restaurant_outlet_description'] as String?,
      restaurantOutletId: json['restaurant_outlet_id'] as String?,
      restaurantOutletName: json['restaurant_outlet_name'] as String?,
      status: json['status'] as String?,
      address: json['address'] as String?,
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
    );

Map<String, dynamic> _$RestaurantOutletToJson(RestaurantOutlet instance) =>
    <String, dynamic>{
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'created_by': instance.createdBy,
      'restaurant_outlet_description': instance.restaurantOutletDescription,
      'restaurant_outlet_id': instance.restaurantOutletId,
      'restaurant_outlet_name': instance.restaurantOutletName,
      'address': instance.address,
      'status': instance.status,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
