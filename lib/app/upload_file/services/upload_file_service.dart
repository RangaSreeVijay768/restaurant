import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant_pos/app/upload_file/repos/models/attach_image/attach_image_request.dart';
import 'package:restaurant_pos/app/upload_file/repos/models/get_image_by_entity_id_and_image_type/get_image_by_entity_id_and_image_type_request.dart';
import 'package:restaurant_pos/app/upload_file/repos/models/upload_file/upload_file_request.dart';
import 'package:restaurant_pos/app/upload_file/repos/upload_file_repo.dart';

import '../repos/models/get_image_by_entity_id_and_image_type/get_image_by_entity_id_and_image_type_response.dart';
import '../repos/models/upload_file/upload_file_response.dart';

@singleton
class UploadFileService {
  late UploadFileRepo uploadFileRepo;

  UploadFileService() {
    uploadFileRepo = GetIt.instance<UploadFileRepo>();
  }

  Future<List<GetImageByEntityIdAndImageTypeResponse>>
      getImageByEntityIdAndImageType(
          GetImageByEntityIdAndImageTypeRequest request) {
    return uploadFileRepo.getImageByEntityIdAndImageType(request);
  }

  Future<String> attachImage(AttachImageRequest attachImageRequest){
    return uploadFileRepo.attachImage(attachImageRequest);
  }

  Future<UploadFileResponse> uploadFile(UploadFileRequest uploadFileRequest){
    return uploadFileRepo.uploadFile(uploadFileRequest);
  }
}
