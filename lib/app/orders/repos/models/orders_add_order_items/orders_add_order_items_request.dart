import 'package:json_annotation/json_annotation.dart';

part 'orders_add_order_items_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class OrdersAddOrderItemsRequest {
  List<AddOrderItemsRequestItems>? addOrderItemsRequestItems;
  String? orderId;

  OrdersAddOrderItemsRequest({this.addOrderItemsRequestItems, this.orderId});

  factory OrdersAddOrderItemsRequest.fromJson(Map<String, dynamic> json) => _$OrdersAddOrderItemsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersAddOrderItemsRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AddOrderItemsRequestItems {
  num? itemAmount;
  int? itemQuantity;
  String? menuItemId;

  AddOrderItemsRequestItems({required this.itemAmount, required this.itemQuantity, required this.menuItemId});

  factory AddOrderItemsRequestItems.fromJson(Map<String, dynamic> json) => _$AddOrderItemsRequestItemsFromJson(json);

  Map<String, dynamic> toJson() => _$AddOrderItemsRequestItemsToJson(this);
}

