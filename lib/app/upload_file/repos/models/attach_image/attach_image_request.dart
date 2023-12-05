import 'package:json_annotation/json_annotation.dart';

part 'attach_image_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AttachImageRequest {
  String? imageType;
  String? entity;
  String? fileId;

  factory AttachImageRequest.fromJson(Map<String, dynamic> json) =>
      _$AttachImageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AttachImageRequestToJson(this);

  AttachImageRequest({this.imageType, this.entity,this.fileId});
}
