import 'package:json_annotation/json_annotation.dart';

part 'get_orders_count_between_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetOrdersCountBetweenRequest {
  DateTime? startTime;
  DateTime? endTime;

  factory GetOrdersCountBetweenRequest.fromJson(Map<String, dynamic> json) =>
      _$GetOrdersCountBetweenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetOrdersCountBetweenRequestToJson(this);

  GetOrdersCountBetweenRequest({this.startTime, this.endTime});
}
