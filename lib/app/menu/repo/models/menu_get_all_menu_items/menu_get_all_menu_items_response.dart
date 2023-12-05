import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/models/menus/menu_item.dart';

part 'menu_get_all_menu_items_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MenuGetAllMenuItemsResponse extends MenuItem {
  MenuGetAllMenuItemsResponse(
      {super.menuItemDescription,
      super.menuItemId,
      super.menuItemName,
      super.status});

  factory MenuGetAllMenuItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$MenuGetAllMenuItemsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MenuGetAllMenuItemsResponseToJson(this);
}
