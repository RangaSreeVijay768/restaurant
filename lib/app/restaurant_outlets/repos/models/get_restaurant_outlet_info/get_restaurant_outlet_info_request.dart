import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/common/sorted_paginated_request.dart';

part 'get_restaurant_outlet_info_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetRestaurantOutletInfoRequest extends SortedPaginatedRequest{

  String? restaurantOutletId;
  String? status;

  factory GetRestaurantOutletInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$GetRestaurantOutletInfoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetRestaurantOutletInfoRequestToJson(this);

  GetRestaurantOutletInfoRequest({
    this.restaurantOutletId, super.first, super.count, super.columnName, super.columnOrder, this.status
  });
}
