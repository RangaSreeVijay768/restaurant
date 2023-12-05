import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/common/sorted_paginated_request.dart';

part 'get_all_orders_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllOrdersRequest extends SortedPaginatedRequest {
  String? status;

  GetAllOrdersRequest({this.status});

  factory GetAllOrdersRequest.fromJson(Map<String, dynamic> json) =>
      _$GetAllOrdersRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllOrdersRequestToJson(this);
}
