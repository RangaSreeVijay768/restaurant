import 'package:json_annotation/json_annotation.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_sum_of_amount_of_all_orders_between_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetSumOfAmountOfAllOrdersBetweenResponse {

  factory GetSumOfAmountOfAllOrdersBetweenResponse.fromJson(
      Map<String, dynamic> json) =>
      _$GetSumOfAmountOfAllOrdersBetweenResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetSumOfAmountOfAllOrdersBetweenResponseToJson(this);

  GetSumOfAmountOfAllOrdersBetweenResponse();
}
