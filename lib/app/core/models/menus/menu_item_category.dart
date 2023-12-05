import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/menus/category.dart';
import 'package:restaurant_pos/app/core/models/menus/menu_item.dart';

part 'menu_item_category.g.dart';

@JsonSerializable()
class MenuItemCategory {
  factory MenuItemCategory.fromJson(Map<String, dynamic> json) =>
      _$MenuItemCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$MenuItemCategoryToJson(this);

  Category? category;
  MenuItem? menuItem;
  String? menuItemCategoryId;

  MenuItemCategory(this.category, this.menuItem, this.menuItemCategoryId);
}
