import 'package:json_annotation/json_annotation.dart';

part 'orders_add_order_items_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class OrdersAddOrderItemsResponse {

  factory OrdersAddOrderItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$OrdersAddOrderItemsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersAddOrderItemsResponseToJson(this);

  OrdersAddOrderItemsResponse();
}
