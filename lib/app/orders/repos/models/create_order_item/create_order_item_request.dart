import 'package:json_annotation/json_annotation.dart';

part 'create_order_item_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateOrderItemRequest {
  String? orderId;
  String? menuItemId;
  int? itemQuantity;
  num? itemAmount;

  factory CreateOrderItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderItemRequestToJson(this);

  CreateOrderItemRequest({
    this.orderId,
    this.menuItemId,
    this.itemQuantity,
    this.itemAmount,
  });
}
