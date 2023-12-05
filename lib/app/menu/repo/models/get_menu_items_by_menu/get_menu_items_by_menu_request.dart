import 'package:json_annotation/json_annotation.dart';
import '/app/core/models/common/sorted_paginated_request.dart';

part 'get_menu_items_by_menu_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetMenuItemsByMenuRequest extends SortedPaginatedRequest {
  String? menu;
  String? status;
  String? filterMenuItemName;

  factory GetMenuItemsByMenuRequest.fromJson(Map<String, dynamic> json) =>
      _$GetMenuItemsByMenuRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetMenuItemsByMenuRequestToJson(this);

  GetMenuItemsByMenuRequest(
      {this.menu,
        this.filterMenuItemName,
        this.status,
      super.first,
      super.count,
      super.columnName,
      super.columnOrder});
}
