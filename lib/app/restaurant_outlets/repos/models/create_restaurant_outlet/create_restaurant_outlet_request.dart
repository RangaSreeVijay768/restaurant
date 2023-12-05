import 'package:json_annotation/json_annotation.dart';

part 'create_restaurant_outlet_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateRestaurantOutletRequest {
  String? restaurantOutletDescription;
  String? restaurantOutletName;
  String? address;

  CreateRestaurantOutletRequest({this.restaurantOutletDescription, this.restaurantOutletName, this.address});

  factory CreateRestaurantOutletRequest.fromJson(Map<String, dynamic> json) => _$CreateRestaurantOutletRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateRestaurantOutletRequestToJson(this);
}

