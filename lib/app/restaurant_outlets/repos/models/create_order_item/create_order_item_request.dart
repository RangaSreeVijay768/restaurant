import 'package:json_annotation/json_annotation.dart';

part 'create_order_item_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateOrderItemRequest {

  factory CreateOrderItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderItemRequestToJson(this);

  CreateOrderItemRequest();
}
