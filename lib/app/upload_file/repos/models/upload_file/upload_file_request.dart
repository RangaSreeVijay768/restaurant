import 'dart:io';

import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant_pos/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'upload_file_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UploadFileRequest {

  @JsonKey(includeFromJson: false,includeToJson: false)
  File? file;

  factory UploadFileRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadFileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UploadFileRequestToJson(this);

  UploadFileRequest({this.file});
}
