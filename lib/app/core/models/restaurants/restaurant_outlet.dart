import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/common/base_entity.dart';
import 'package:restaurant_pos/app/core/models/users/user_account.dart';
import 'package:restaurant_pos/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'restaurant_outlet.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RestaurantOutlet extends BaseEntity {
  UserAccount? createdBy;
  String? restaurantOutletDescription;
  String? restaurantOutletId;
  String? restaurantOutletName;
   String? address;
   String? status;

  RestaurantOutlet(
      {this.createdBy,
      this.restaurantOutletDescription,
      this.restaurantOutletId,
      this.restaurantOutletName,
      this.status,
        this.address,
      super.createdTime,
      super.lastUpdatedTime});

  factory RestaurantOutlet.fromJson(Map<String, dynamic> json) =>
      _$RestaurantOutletFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantOutletToJson(this);
}
