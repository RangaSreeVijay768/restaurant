import 'package:json_annotation/json_annotation.dart';

part 'create_order_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateOrderRequest {
  String restaurantOutletId;

  factory CreateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderRequestToJson(this);

  CreateOrderRequest({
    required this.restaurantOutletId,
  });

}
