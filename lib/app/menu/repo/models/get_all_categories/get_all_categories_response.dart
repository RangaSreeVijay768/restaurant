import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_categories_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllCategoriesResponse {
  String? categoryDescription;
  String? categoryId;
  String? categoryName;
  String? isSubCategory;
  String? status;

  GetAllCategoriesResponse({
    this.categoryDescription,
    this.categoryId,
    this.categoryName,
    this.isSubCategory,
    this.status});

  factory GetAllCategoriesResponse.fromJson(Map<String, dynamic> json) => _$GetAllCategoriesResponseFromJson(json);
  Map<String, dynamic> toJson( instance) => _$GetAllCategoriesResponseToJson(this);

}
