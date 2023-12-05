import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/common/sorted_paginated_request.dart';

part 'menu_get_all_menu_items_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MenuGetAllMenuItemsRequest extends SortedPaginatedRequest {
  String? menuItemDescription;
  String? menuItemId;
  String? menuItemName;
  String? status;

  MenuGetAllMenuItemsRequest({this.status, this.menuItemDescription, this.menuItemId, this.menuItemName});

  factory MenuGetAllMenuItemsRequest.fromJson(Map<String, dynamic> json) =>
      _$MenuGetAllMenuItemsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MenuGetAllMenuItemsRequestToJson(this);
}
