import 'package:json_annotation/json_annotation.dart';

part 'get_image_by_entity_id_and_image_type_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetImageByEntityIdAndImageTypeRequest {

  String? entity;
  String? imageType;

  factory GetImageByEntityIdAndImageTypeRequest.fromJson(
      Map<String, dynamic> json) =>
      _$GetImageByEntityIdAndImageTypeRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetImageByEntityIdAndImageTypeRequestToJson(this);

  GetImageByEntityIdAndImageTypeRequest({this.entity, this.imageType});
}
