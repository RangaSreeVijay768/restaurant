import 'package:json_annotation/json_annotation.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_order_items_group_by_menu_items_and_item_quantities_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetOrderItemsGroupByMenuItemsAndItemQuantitiesResponse {
  String? name;
  double? count;

  factory GetOrderItemsGroupByMenuItemsAndItemQuantitiesResponse.fromJson(
      Map<String, dynamic> json) =>
      _$GetOrderItemsGroupByMenuItemsAndItemQuantitiesResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetOrderItemsGroupByMenuItemsAndItemQuantitiesResponseToJson(this);

  GetOrderItemsGroupByMenuItemsAndItemQuantitiesResponse({this.count, this.name});
}
