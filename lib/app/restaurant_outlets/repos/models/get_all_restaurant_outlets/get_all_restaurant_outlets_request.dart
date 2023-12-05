import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/common/sorted_paginated_request.dart';

part 'get_all_restaurant_outlets_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllRestaurantOutletsRequest extends SortedPaginatedRequest {
  String? status;

  GetAllRestaurantOutletsRequest(
      {this.status,
      super.columnName,
      super.columnOrder,
      super.first,
      super.count});

  factory GetAllRestaurantOutletsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetAllRestaurantOutletsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllRestaurantOutletsRequestToJson(this);
}
