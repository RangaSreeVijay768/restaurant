import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet.dart';

import '../../../../core/models/users/user_account.dart';
import 'package:restaurant_pos/app/core/models/common/converters/date_time_to_iso_converter.dart';
part 'get_all_restaurant_outlets_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllRestaurantOutletsResponse extends RestaurantOutlet {
  GetAllRestaurantOutletsResponse(
      {super.createdBy,
      super.restaurantOutletDescription,
      super.restaurantOutletId,
      super.restaurantOutletName,
      super.status});

  factory GetAllRestaurantOutletsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllRestaurantOutletsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllRestaurantOutletsResponseToJson(this);
}
