import 'package:json_annotation/json_annotation.dart';

part 'get_total_orders_amount_group_by_payment_gateway_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetTotalOrdersAmountGroupByPaymentGatewayRequest {

  factory GetTotalOrdersAmountGroupByPaymentGatewayRequest.fromJson(
      Map<String, dynamic> json) =>
      _$GetTotalOrdersAmountGroupByPaymentGatewayRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetTotalOrdersAmountGroupByPaymentGatewayRequestToJson(this);

  GetTotalOrdersAmountGroupByPaymentGatewayRequest();
}
