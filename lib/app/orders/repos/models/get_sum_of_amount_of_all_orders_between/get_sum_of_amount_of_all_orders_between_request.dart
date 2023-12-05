import 'package:json_annotation/json_annotation.dart';

part 'get_sum_of_amount_of_all_orders_between_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetSumOfAmountOfAllOrdersBetweenRequest {
  DateTime? startTime;
  DateTime? endTime;

  factory GetSumOfAmountOfAllOrdersBetweenRequest.fromJson(
      Map<String, dynamic> json) =>
      _$GetSumOfAmountOfAllOrdersBetweenRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetSumOfAmountOfAllOrdersBetweenRequestToJson(this);

  GetSumOfAmountOfAllOrdersBetweenRequest({this.startTime, this.endTime});
}
