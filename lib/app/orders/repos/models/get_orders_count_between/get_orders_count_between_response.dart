import 'package:json_annotation/json_annotation.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_orders_count_between_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetOrdersCountBetweenResponse {

  factory GetOrdersCountBetweenResponse.fromJson(Map<String, dynamic> json) =>
      _$GetOrdersCountBetweenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetOrdersCountBetweenResponseToJson(this);

  GetOrdersCountBetweenResponse();
}
