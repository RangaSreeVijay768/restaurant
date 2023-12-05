import 'package:json_annotation/json_annotation.dart';

part 'complete_order_payment_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CompleteOrderPaymentRequest {
  String? orderPayment;

  factory CompleteOrderPaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$CompleteOrderPaymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CompleteOrderPaymentRequestToJson(this);

  CompleteOrderPaymentRequest({this.orderPayment});
}
