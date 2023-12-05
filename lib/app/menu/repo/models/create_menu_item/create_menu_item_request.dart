import 'package:json_annotation/json_annotation.dart';

part 'create_menu_item_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateMenuItemRequest {
  String? menuItemDescription;
  String? menuItemName;
  String? menu;
  num? price;

  CreateMenuItemRequest(
      {this.menuItemDescription, this.menuItemName, this.price,this.menu});

  factory CreateMenuItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateMenuItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateMenuItemRequestToJson(this);
}
