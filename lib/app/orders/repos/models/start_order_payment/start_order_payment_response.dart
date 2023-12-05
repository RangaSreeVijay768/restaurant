import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/orders/order_info.dart';

import '../../../../core/models/orders/order.dart';
import '../../../../core/models/orders/order_item.dart';
import '../../../../core/models/orders/order_payment.dart';

part 'start_order_payment_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class StartOrderPaymentResponse extends OrderInfo {

  StartOrderPaymentResponse();

  factory StartOrderPaymentResponse.fromJson(Map<String, dynamic> json) => _$StartOrderPaymentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StartOrderPaymentResponseToJson(this);
}



