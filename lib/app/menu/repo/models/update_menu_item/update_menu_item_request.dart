import 'package:json_annotation/json_annotation.dart';

part 'update_menu_item_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UpdateMenuItemRequest {
  String? menuItemDescription;
  String? menuItemName;
  String? price;
  String? menuItemId;

  UpdateMenuItemRequest(
      {this.menuItemDescription,
      this.menuItemName,
      this.price,
      this.menuItemId});

  factory UpdateMenuItemRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateMenuItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateMenuItemRequestToJson(this);
}
