import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/orders/order.dart';
import 'package:restaurant_pos/app/core/models/orders/order_item.dart';

import '../../../orders/repos/models/start_order_payment/start_order_payment_response.dart';
import 'order_payment.dart';

part 'order_info.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class OrderInfo {
  Order? order;
  List<OrderItem>? orderItems;
  List<OrderPayment>? orderPayments;

  factory OrderInfo.fromJson(Map<String, dynamic> json) =>
      _$OrderInfoFromJson(json);

  Map<String, dynamic> toJson() => _$OrderInfoToJson(this);

  OrderInfo({
    this.order,
    this.orderItems,
    this.orderPayments
  });

}
