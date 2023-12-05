import 'package:json_annotation/json_annotation.dart';

part 'get_total_orders_amount_group_by_date_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetTotalOrdersAmountGroupByDateRequest {
  DateTime? startTime;
  DateTime? endTime;

  factory GetTotalOrdersAmountGroupByDateRequest.fromJson(
      Map<String, dynamic> json) =>
      _$GetTotalOrdersAmountGroupByDateRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetTotalOrdersAmountGroupByDateRequestToJson(this);

  GetTotalOrdersAmountGroupByDateRequest({this.endTime, this.startTime});
}
