import 'package:json_annotation/json_annotation.dart';

part 'update_order_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UpdateOrderRequest {
  int? amount;
  int? itemQuantity;
  String? orderId;

  factory UpdateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateOrderRequestToJson(this);

  UpdateOrderRequest({this.itemQuantity, this.amount, this.orderId});
}
