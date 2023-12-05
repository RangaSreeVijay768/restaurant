// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_restaurant_outlet_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateRestaurantOutletRequest _$UpdateRestaurantOutletRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateRestaurantOutletRequest(
      restaurantOutletName: json['restaurant_outlet_name'] as String?,
      address: json['address'] as String?,
      restaurantOutletId: json['restaurant_outlet_id'] as String?,
      restaurantOutletDescription:
          json['restaurant_outlet_description'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as int?,
      about: json['about'] as String?,
      gstNumber: json['gst_number'] as int?,
      personName: json['person_name'] as String?,
      pinCode: json['pin_code'] as int?,
      stateOfSupply: json['state_of_supply'] as String?,
    );

Map<String, dynamic> _$UpdateRestaurantOutletRequestToJson(
        UpdateRestaurantOutletRequest instance) =>
    <String, dynamic>{
      'restaurant_outlet_id': instance.restaurantOutletId,
      'restaurant_outlet_description': instance.restaurantOutletDescription,
      'restaurant_outlet_name': instance.restaurantOutletName,
      'address': instance.address,
      'person_name': instance.personName,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'gst_number': instance.gstNumber,
      'state_of_supply': instance.stateOfSupply,
      'pin_code': instance.pinCode,
      'about': instance.about,
    };
