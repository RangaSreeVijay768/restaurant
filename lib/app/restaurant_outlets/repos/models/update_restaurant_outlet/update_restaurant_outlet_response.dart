import 'package:json_annotation/json_annotation.dart';

part 'update_restaurant_outlet_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UpdateRestaurantOutletResponse {

  factory UpdateRestaurantOutletResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateRestaurantOutletResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateRestaurantOutletResponseToJson(this);

  UpdateRestaurantOutletResponse();
}
