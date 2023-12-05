import 'package:json_annotation/json_annotation.dart';

import '/app/core/models/common/sorted_paginated_request.dart';

part 'get_order_infos_by_restaurant_outlet_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetOrderInfosByRestaurantOutletRequest extends SortedPaginatedRequest {
  String? status;
  String restaurantOutlet;

  factory GetOrderInfosByRestaurantOutletRequest.fromJson(
          Map<String, dynamic> json) =>
      _$GetOrderInfosByRestaurantOutletRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetOrderInfosByRestaurantOutletRequestToJson(this);

  GetOrderInfosByRestaurantOutletRequest(
      {required this.restaurantOutlet,
      this.status,
      super.first,
      super.count,
      super.columnName,
      super.columnOrder});
}
