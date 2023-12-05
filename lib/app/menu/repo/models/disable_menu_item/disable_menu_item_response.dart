import 'package:json_annotation/json_annotation.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'disable_menu_item_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DisableMenuItemResponse {

  factory DisableMenuItemResponse.fromJson(Map<String, dynamic> json) =>
      _$DisableMenuItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DisableMenuItemResponseToJson(this);

  DisableMenuItemResponse();
}
