import 'package:json_annotation/json_annotation.dart';

part 'disable_menu_item_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DisableMenuItemRequest {
  String? menuItemId;

  factory DisableMenuItemRequest.fromJson(Map<String, dynamic> json) =>
      _$DisableMenuItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DisableMenuItemRequestToJson(this);

  DisableMenuItemRequest({this.menuItemId});
}
