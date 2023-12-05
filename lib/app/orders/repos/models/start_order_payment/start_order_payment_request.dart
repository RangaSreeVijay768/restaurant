import 'package:json_annotation/json_annotation.dart';

import '../../../../core/models/orders/order.dart';

part 'start_order_payment_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class StartOrderPaymentRequest {
  String? order;
  dynamic paymentGateway;

  StartOrderPaymentRequest({this.order, this.paymentGateway});

  factory StartOrderPaymentRequest.fromJson(Map<String, dynamic> json) => _$StartOrderPaymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$StartOrderPaymentRequestToJson(this);
}

