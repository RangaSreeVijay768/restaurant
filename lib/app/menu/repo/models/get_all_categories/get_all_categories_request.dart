import 'package:json_annotation/json_annotation.dart';

part 'get_all_categories_request.g.dart';

@JsonSerializable()
class GetAllCategoriesRequest {
  String? status;
  String? category_name;
  String? category_description;
  String? parent_category_id;
  String? is_sub_category;

  GetAllCategoriesRequest({this.status, this.category_description, this.category_name, this.is_sub_category, this.parent_category_id});

  factory GetAllCategoriesRequest.fromJson(Map<String, dynamic> json) => _$GetAllCategoriesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllCategoriesRequestToJson(this);
}

