import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/menus/menu_item.dart';

part 'get_menu_items_by_menu_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetMenuItemsByMenuResponse extends MenuItem {
  factory GetMenuItemsByMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMenuItemsByMenuResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetMenuItemsByMenuResponseToJson(this);

  GetMenuItemsByMenuResponse();
}
