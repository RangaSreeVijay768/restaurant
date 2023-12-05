import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Category {
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
  String? categoryDescription;
  String? categoryId;
  String? categoryName;
  String? isSubCategory;
  String? status;

  Category(
      {this.categoryDescription,
      this.categoryId,
      this.categoryName,
      this.isSubCategory,
      this.status});
}
