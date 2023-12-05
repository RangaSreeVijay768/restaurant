
import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet_menu.dart';

part 'restaurant_outlet_info.g.dart';


@JsonSerializable()
class RestaurantOutletInfo {
  factory RestaurantOutletInfo.fromJson(Map<String, dynamic> json) =>
      _$RestaurantOutletInfoFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantOutletInfoToJson(this);

  RestaurantOutlet? restaurantOutlet;
  RestaurantOutletMenu? restaurantOutletMenu;

  RestaurantOutletInfo({
    this.restaurantOutlet,
    this.restaurantOutletMenu,
  });
}
