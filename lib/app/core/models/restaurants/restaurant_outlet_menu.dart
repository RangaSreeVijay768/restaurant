import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/common/base_entity.dart';
import 'package:restaurant_pos/app/core/models/menus/menu.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'restaurant_outlet_menu.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RestaurantOutletMenu extends BaseEntity {
  RestaurantOutlet? restaurantOutlet;
  Menu? menu;

  factory RestaurantOutletMenu.fromJson(Map<String, dynamic> json) =>
      _$RestaurantOutletMenuFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantOutletMenuToJson(this);

  RestaurantOutletMenu(
      {this.restaurantOutlet,
      this.menu,
      super.createdTime,
      super.lastUpdatedTime});
}
