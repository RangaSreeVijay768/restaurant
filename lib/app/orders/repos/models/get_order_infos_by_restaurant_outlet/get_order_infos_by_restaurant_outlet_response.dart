import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/orders/order_info.dart';
import 'package:restaurant_pos/app/core/models/orders/order.dart';
import 'package:restaurant_pos/app/core/models/orders/order_item.dart';

import '../../../../core/models/orders/order_payment.dart';



part 'get_order_infos_by_restaurant_outlet_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetOrderInfosByRestaurantOutletResponse extends OrderInfo {
  factory GetOrderInfosByRestaurantOutletResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetOrderInfosByRestaurantOutletResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetOrderInfosByRestaurantOutletResponseToJson(this);

  GetOrderInfosByRestaurantOutletResponse();
}
