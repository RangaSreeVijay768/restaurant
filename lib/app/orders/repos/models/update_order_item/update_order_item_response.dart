import 'package:json_annotation/json_annotation.dart';

part 'update_order_item_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UpdateOrderItemResponse {

  factory UpdateOrderItemResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateOrderItemResponseToJson(this);

  UpdateOrderItemResponse();
}
