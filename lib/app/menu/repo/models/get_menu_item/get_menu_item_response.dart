import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/menus/menu_item.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_menu_item_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetMenuItemResponse extends MenuItem{

  factory GetMenuItemResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMenuItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetMenuItemResponseToJson(this);

  GetMenuItemResponse();
}
