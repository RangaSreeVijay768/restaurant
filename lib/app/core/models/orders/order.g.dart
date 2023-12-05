// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      amount: (json['amount'] as num?)?.toDouble(),
      itemQuantity: json['item_quantity'] as int?,
      orderId: json['order_id'] as String?,
      status: json['status'] as String?,
      restaurantOutlet: json['restaurant_outlet'] == null
          ? null
          : RestaurantOutlet.fromJson(
              json['restaurant_outlet'] as Map<String, dynamic>),
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'amount': instance.amount,
      'item_quantity': instance.itemQuantity,
      'order_id': instance.orderId,
      'status': instance.status,
      'restaurant_outlet': instance.restaurantOutlet,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
