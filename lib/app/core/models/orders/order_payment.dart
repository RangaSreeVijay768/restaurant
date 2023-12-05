import 'package:json_annotation/json_annotation.dart';

import 'order.dart';

part 'order_payment.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class OrderPayment {
  String? orderPaymentId;
  String? paymentGateway;
  String? paymentGatewayDataJsonString;
  String? paymentGatewayId;
  String? paymentGatewayStatus;
  String? status;
  Order? order;

  OrderPayment(
      {this.paymentGatewayDataJsonString,
      this.orderPaymentId,
      this.paymentGatewayId,
      this.paymentGatewayStatus,
      this.paymentGateway,
      this.order,
      this.status});

  factory OrderPayment.fromJson(Map<String, dynamic> json) =>
      _$OrderPaymentFromJson(json);

  Map<String, dynamic> toJson() => _$OrderPaymentToJson(this);
}
