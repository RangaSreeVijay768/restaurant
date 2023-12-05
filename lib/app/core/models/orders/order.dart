import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/common/base_entity.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet.dart';
import 'package:restaurant_pos/app/core/models/users/user_account.dart';
import 'package:restaurant_pos/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'order.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Order extends BaseEntity {
  double? amount;
  int? itemQuantity;
  String? orderId;
  String? status;
  RestaurantOutlet? restaurantOutlet;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);

  Order(
      {this.amount,
      this.itemQuantity,
      this.orderId,
      this.status,
      this.restaurantOutlet,
      super.createdTime,
      super.lastUpdatedTime});
}
