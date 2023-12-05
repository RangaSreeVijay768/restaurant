import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/models/common/converters/date_time_to_iso_converter.dart';
import 'package:restaurant_pos/app/core/models/orders/order.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet.dart';

part 'get_all_orders_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllOrdersResponse extends Order {
  factory GetAllOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllOrdersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllOrdersResponseToJson(this);

  GetAllOrdersResponse();
}
