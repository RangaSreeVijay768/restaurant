import 'package:json_annotation/json_annotation.dart';

part 'menu_item.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MenuItem {
  factory MenuItem.fromJson(Map<String, dynamic> json) =>
      _$MenuItemFromJson(json);

  Map<String, dynamic> toJson() => _$MenuItemToJson(this);

  String? menuItemDescription;
  String? menuItemId;
  String? menuItemName;
  String? status;
  num? price;

  MenuItem(
      {this.menuItemDescription,
      this.menuItemId,
      this.menuItemName,
      this.status,
      this.price});
}
