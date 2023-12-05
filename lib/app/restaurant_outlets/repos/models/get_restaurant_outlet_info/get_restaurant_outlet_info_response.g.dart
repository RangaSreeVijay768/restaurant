// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurant_outlet_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRestaurantOutletInfoResponse _$GetRestaurantOutletInfoResponseFromJson(
        Map<String, dynamic> json) =>
    GetRestaurantOutletInfoResponse()
      ..restaurantOutlet = json['restaurant_outlet'] == null
          ? null
          : RestaurantOutlet.fromJson(
              json['restaurant_outlet'] as Map<String, dynamic>)
      ..restaurantOutletMenu = json['restaurant_outlet_menu'] == null
          ? null
          : RestaurantOutletMenu.fromJson(
              json['restaurant_outlet_menu'] as Map<String, dynamic>);

Map<String, dynamic> _$GetRestaurantOutletInfoResponseToJson(
        GetRestaurantOutletInfoResponse instance) =>
    <String, dynamic>{
      'restaurant_outlet': instance.restaurantOutlet,
      'restaurant_outlet_menu': instance.restaurantOutletMenu,
    };
