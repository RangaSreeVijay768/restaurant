import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'update_order_item_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UpdateOrderItemRequest {
  String? orderItemId;
  num? itemAmount;
  String? itemDeliveryStatus;
  @DateTimeToIsoConverter()
  DateTime? itemDeliveryTime;
  int? itemQuantity;

  factory UpdateOrderItemRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateOrderItemRequestToJson(this);

  UpdateOrderItemRequest(
      {this.itemQuantity,
      this.itemDeliveryTime,
      this.itemDeliveryStatus,
      this.itemAmount,
      this.orderItemId});
}
