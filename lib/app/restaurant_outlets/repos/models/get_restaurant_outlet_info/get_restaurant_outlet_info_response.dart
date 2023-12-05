import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet_info.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet_menu.dart';

part 'get_restaurant_outlet_info_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetRestaurantOutletInfoResponse extends RestaurantOutletInfo {
  factory GetRestaurantOutletInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRestaurantOutletInfoResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetRestaurantOutletInfoResponseToJson(this);

  GetRestaurantOutletInfoResponse();
}
