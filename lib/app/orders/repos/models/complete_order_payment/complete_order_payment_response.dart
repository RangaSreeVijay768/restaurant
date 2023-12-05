import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/orders/order.dart';
import 'package:restaurant_pos/app/core/models/orders/order_item.dart';
import 'package:restaurant_pos/app/core/models/orders/order_payment.dart';

part 'complete_order_payment_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CompleteOrderPaymentResponse {
  Order? order;
  List<OrderItem>? orderItems;
  List<OrderPayment>? orderPayments;

  CompleteOrderPaymentResponse({this.order, this.orderPayments, this.orderItems});

  factory CompleteOrderPaymentResponse.fromJson(Map<String, dynamic> json) => _$CompleteOrderPaymentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CompleteOrderPaymentResponseToJson(this);
}


