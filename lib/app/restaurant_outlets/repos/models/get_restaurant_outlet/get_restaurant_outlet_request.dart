import 'package:json_annotation/json_annotation.dart';


part 'get_restaurant_outlet_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@JsonSerializable()
class GetRestaurantOutletRequest {

  factory GetRestaurantOutletRequest.fromJson(Map<String, dynamic> json) =>
      _$GetRestaurantOutletRequestFromJson(json);

  Map<String, dynamic> toJson(instance) =>
      _$GetRestaurantOutletRequestToJson(this);
  String restaurantOutletId;

  GetRestaurantOutletRequest({
    required this.restaurantOutletId,
  });


}
