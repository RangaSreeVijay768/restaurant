import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/Image/Image.dart';

part 'get_image_by_entity_id_and_image_type_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetImageByEntityIdAndImageTypeResponse extends Image{

  factory GetImageByEntityIdAndImageTypeResponse.fromJson(
      Map<String, dynamic> json) =>
      _$GetImageByEntityIdAndImageTypeResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetImageByEntityIdAndImageTypeResponseToJson(this);

  GetImageByEntityIdAndImageTypeResponse();
}
