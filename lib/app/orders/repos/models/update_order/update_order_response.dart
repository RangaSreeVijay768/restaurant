import 'package:json_annotation/json_annotation.dart';

part 'update_order_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UpdateOrderResponse {

  factory UpdateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateOrderResponseToJson(this);

  UpdateOrderResponse();
}
