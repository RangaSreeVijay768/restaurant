// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_outlet_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantOutletMenu _$RestaurantOutletMenuFromJson(
        Map<String, dynamic> json) =>
    RestaurantOutletMenu(
      restaurantOutlet: json['restaurant_outlet'] == null
          ? null
          : RestaurantOutlet.fromJson(
              json['restaurant_outlet'] as Map<String, dynamic>),
      menu: json['menu'] == null
          ? null
          : Menu.fromJson(json['menu'] as Map<String, dynamic>),
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
    );

Map<String, dynamic> _$RestaurantOutletMenuToJson(
        RestaurantOutletMenu instance) =>
    <String, dynamic>{
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'restaurant_outlet': instance.restaurantOutlet,
      'menu': instance.menu,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
