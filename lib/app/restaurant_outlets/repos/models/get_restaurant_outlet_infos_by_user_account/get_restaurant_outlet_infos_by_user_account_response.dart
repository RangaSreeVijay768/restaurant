import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet_info.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet_menu.dart';

part 'get_restaurant_outlet_infos_by_user_account_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetRestaurantOutletInfosByUserAccountResponse
    extends RestaurantOutletInfo {
  factory GetRestaurantOutletInfosByUserAccountResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetRestaurantOutletInfosByUserAccountResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetRestaurantOutletInfosByUserAccountResponseToJson(this);

  GetRestaurantOutletInfosByUserAccountResponse();
}
