import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant_pos/app/core/logger/log.dart';
import 'package:restaurant_pos/app/core/network/dio_client.dart';
import 'package:restaurant_pos/app/upload_file/repos/models/attach_image/attach_image_request.dart';
import 'package:restaurant_pos/app/upload_file/repos/models/get_image_by_entity_id_and_image_type/get_image_by_entity_id_and_image_type_request.dart';
import 'package:restaurant_pos/app/upload_file/repos/models/upload_file/upload_file_request.dart';
import 'package:restaurant_pos/app/upload_file/repos/models/upload_file/upload_file_response.dart';
import 'package:retrofit/http.dart';

import '../../environment/env_config.dart';
import 'models/get_image_by_entity_id_and_image_type/get_image_by_entity_id_and_image_type_response.dart';

part 'upload_file_repo.g.dart';

@RestApi()
abstract class UploadFileRestClient {
  factory UploadFileRestClient(Dio dio, {String baseUrl}) =
      _UploadFileRestClient;

  @GET("/files/images")
  Future<List<GetImageByEntityIdAndImageTypeResponse>> getImageByEntityIdAndImageType(
      @Queries() Map<String, dynamic> queryMap);

  @POST("/files/secured/images")
  Future<String> attachImage(@Body() AttachImageRequest attachImageRequest);

  @POST("/files/secured")
  @MultiPart()
  Future<UploadFileResponse> uploadFile(
      @Part() String name, @Part() File file);
}

@singleton
class UploadFileRepo extends RestService {
  late UploadFileRestClient uploadFileRestClient;

  UploadFileRepo() : super() {
    this.uploadFileRestClient = UploadFileRestClient(getDioClient(),
        baseUrl: EnvConfig.getAppEnvironment().apiUrl);
  }

  Future<List<GetImageByEntityIdAndImageTypeResponse>> getImageByEntityIdAndImageType(
      GetImageByEntityIdAndImageTypeRequest request) {
    return uploadFileRestClient
        .getImageByEntityIdAndImageType(request.toJson());
  }

  Future<String> attachImage(AttachImageRequest attachImageRequest) {
    return uploadFileRestClient.attachImage(attachImageRequest);
  }

  Future<UploadFileResponse> uploadFile(UploadFileRequest uploadFileRequest) {
    logger.d(uploadFileRequest.file);
    return uploadFileRestClient.uploadFile(
        "testing" + Random.secure().nextInt(1000).toString() + ".png",
        uploadFileRequest.file!);
  }

}
