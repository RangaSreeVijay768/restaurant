import 'package:json_annotation/json_annotation.dart';

part 'get_order_items_group_by_menu_items_and_item_quantities_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetOrderItemsGroupByMenuItemsAndItemQuantitiesRequest {

  factory GetOrderItemsGroupByMenuItemsAndItemQuantitiesRequest.fromJson(
      Map<String, dynamic> json) =>
      _$GetOrderItemsGroupByMenuItemsAndItemQuantitiesRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetOrderItemsGroupByMenuItemsAndItemQuantitiesRequestToJson(this);

  GetOrderItemsGroupByMenuItemsAndItemQuantitiesRequest();
}
