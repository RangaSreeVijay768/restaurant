import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurant_pos/app/upload_file/repos/models/attach_image/attach_image_request.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';
import '../../services/upload_file_service.dart';

part 'attach_image_cubit.freezed.dart';
part 'attach_image_state.dart';

class AttachImageCubit extends BaseCubit<AttachImageState> {
  late UploadFileService uploadFileService;

  AttachImageCubit(
      {required super.context,
      String? fileId,
      String? imageType,
      String? entity})
      : super(
            initialState: AttachImageState.initial(
                fileId: fileId, imageType: imageType, entity: entity)) {
    uploadFileService = GetIt.instance<UploadFileService>();
  }

  AttachImageRequest createRequestData(
      {String? fileId, String? imageType, String? entity}) {
    final request = AttachImageRequest(
        fileId: fileId ?? state.fileId,
        imageType: imageType ?? state.imageType,
        entity: entity ?? state.entity);
    return request;
  }

  Future<String> attachImage(AttachImageRequest request) async {
    return uploadFileService.attachImage(request).then((value) {
      emit(state.copyWith(
          attachImageResponse: value,
          attachImageStatus: BooleanStatus.success));
      showSuccessMessage("Image uploaded successfully");
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(attachImageStatus: BooleanStatus.error));
      throw error;
    });
  }
}
