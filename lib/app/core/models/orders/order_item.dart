import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/menus/menu_item.dart';
import 'package:restaurant_pos/app/core/models/orders/order.dart';

part 'order_item.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class OrderItem {
  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemToJson(this);

  num? itemAmount;
  int? itemQuantity;
  MenuItem? menuItem;
  Order? order;
  String? orderItemId;
  String? status;
  String? itemDeliveryStatus;

  OrderItem(this.itemAmount, this.itemQuantity, this.menuItem, this.order,
      this.orderItemId, this.status, this.itemDeliveryStatus);
}
