import 'package:json_annotation/json_annotation.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_total_orders_amount_group_by_date_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetTotalOrdersAmountGroupByDateResponse {
  String? name;
  double? count;

  factory GetTotalOrdersAmountGroupByDateResponse.fromJson(
      Map<String, dynamic> json) =>
      _$GetTotalOrdersAmountGroupByDateResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetTotalOrdersAmountGroupByDateResponseToJson(this);

  GetTotalOrdersAmountGroupByDateResponse();
}
