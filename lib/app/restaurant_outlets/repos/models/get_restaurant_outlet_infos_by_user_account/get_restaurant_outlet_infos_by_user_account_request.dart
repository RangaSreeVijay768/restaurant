import 'package:json_annotation/json_annotation.dart';
import '/app/core/models/common/sorted_paginated_request.dart';

part 'get_restaurant_outlet_infos_by_user_account_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetRestaurantOutletInfosByUserAccountRequest
    extends SortedPaginatedRequest {

  String? status;

  factory GetRestaurantOutletInfosByUserAccountRequest.fromJson(
      Map<String, dynamic> json) =>
      _$GetRestaurantOutletInfosByUserAccountRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetRestaurantOutletInfosByUserAccountRequestToJson(this);

  GetRestaurantOutletInfosByUserAccountRequest(
      {this.status, super.first, super.count, super.columnName, super.columnOrder});
}
