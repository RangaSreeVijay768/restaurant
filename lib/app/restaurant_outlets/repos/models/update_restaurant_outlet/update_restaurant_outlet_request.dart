import 'package:json_annotation/json_annotation.dart';

part 'update_restaurant_outlet_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UpdateRestaurantOutletRequest {
  String? restaurantOutletId;
  String? restaurantOutletDescription;
  String? restaurantOutletName;
  String? address;
  String? personName;
  int? phoneNumber;
  String? email;
  int? gstNumber;
  String? stateOfSupply;
  int? pinCode;
  String? about;

  factory UpdateRestaurantOutletRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateRestaurantOutletRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateRestaurantOutletRequestToJson(this);

  UpdateRestaurantOutletRequest(
      {this.restaurantOutletName,
      this.address,
      this.restaurantOutletId,
      this.restaurantOutletDescription,
      this.email,
      this.phoneNumber,
      this.about,
      this.gstNumber,
      this.personName,
      this.pinCode,
      this.stateOfSupply
      });
}
