import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/common/converters/date_time_to_iso_converter.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet.dart';
import 'package:restaurant_pos/app/core/models/users/user_account.dart';

part 'get_restaurant_outlet_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetRestaurantOutletResponse extends RestaurantOutlet {
  factory GetRestaurantOutletResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRestaurantOutletResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetRestaurantOutletResponseToJson(this);

  GetRestaurantOutletResponse(
      {super.createdBy,
      super.restaurantOutletDescription,
      super.restaurantOutletId,
      super.restaurantOutletName,
      super.status,
      super.createdTime,
      super.lastUpdatedTime})
      : super();
}
