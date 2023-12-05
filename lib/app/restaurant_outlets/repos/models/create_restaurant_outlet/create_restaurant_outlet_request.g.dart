// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_restaurant_outlet_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateRestaurantOutletRequest _$CreateRestaurantOutletRequestFromJson(
        Map<String, dynamic> json) =>
    CreateRestaurantOutletRequest(
      restaurantOutletDescription:
          json['restaurant_outlet_description'] as String?,
      restaurantOutletName: json['restaurant_outlet_name'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$CreateRestaurantOutletRequestToJson(
        CreateRestaurantOutletRequest instance) =>
    <String, dynamic>{
      'restaurant_outlet_description': instance.restaurantOutletDescription,
      'restaurant_outlet_name': instance.restaurantOutletName,
      'address': instance.address,
    };
