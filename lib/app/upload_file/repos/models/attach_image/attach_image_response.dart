import 'package:json_annotation/json_annotation.dart';

part 'attach_image_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AttachImageResponse {

  factory AttachImageResponse.fromJson(Map<String, dynamic> json) =>
      _$AttachImageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AttachImageResponseToJson(this);

  AttachImageResponse();
}
