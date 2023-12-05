import 'package:json_annotation/json_annotation.dart';

part 'create_order_item_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateOrderItemResponse {

  factory CreateOrderItemResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderItemResponseToJson(this);

  CreateOrderItemResponse();
}
