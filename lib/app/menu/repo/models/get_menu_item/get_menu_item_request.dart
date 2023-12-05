import 'package:json_annotation/json_annotation.dart';

part 'get_menu_item_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetMenuItemRequest {
  String? menuItemId;

  factory GetMenuItemRequest.fromJson(Map<String, dynamic> json) =>
      _$GetMenuItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetMenuItemRequestToJson(this);

  GetMenuItemRequest({this.menuItemId});
}
