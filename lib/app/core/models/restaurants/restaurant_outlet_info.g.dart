// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_outlet_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantOutletInfo _$RestaurantOutletInfoFromJson(
        Map<String, dynamic> json) =>
    RestaurantOutletInfo(
      restaurantOutlet: json['restaurantOutlet'] == null
          ? null
          : RestaurantOutlet.fromJson(
              json['restaurantOutlet'] as Map<String, dynamic>),
      restaurantOutletMenu: json['restaurantOutletMenu'] == null
          ? null
          : RestaurantOutletMenu.fromJson(
              json['restaurantOutletMenu'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RestaurantOutletInfoToJson(
        RestaurantOutletInfo instance) =>
    <String, dynamic>{
      'restaurantOutlet': instance.restaurantOutlet,
      'restaurantOutletMenu': instance.restaurantOutletMenu,
    };
