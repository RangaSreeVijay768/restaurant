import 'package:json_annotation/json_annotation.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_total_orders_amount_group_by_payment_gateway_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetTotalOrdersAmountGroupByPaymentGatewayResponse {
  double? count;
  String? name;

  factory GetTotalOrdersAmountGroupByPaymentGatewayResponse.fromJson(
      Map<String, dynamic> json) =>
      _$GetTotalOrdersAmountGroupByPaymentGatewayResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetTotalOrdersAmountGroupByPaymentGatewayResponseToJson(this);

  GetTotalOrdersAmountGroupByPaymentGatewayResponse({this.name, this.count});
}
