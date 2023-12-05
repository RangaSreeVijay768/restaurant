import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/upload_file/repos/models/upload_file/upload_file_request.dart';
import 'package:restaurant_pos/app/upload_file/repos/models/upload_file/upload_file_response.dart';
import '../../services/upload_file_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'upload_file_state.dart';

part 'upload_file_cubit.freezed.dart';

class UploadFileCubit extends BaseCubit<UploadFileState> {
  late UploadFileService uploadFileService;

  UploadFileCubit({required super.context})
      : super(initialState: UploadFileState.initial()) {
    uploadFileService = GetIt.instance<UploadFileService>();
  }

  UploadFileRequest createRequestData({File? file}) {
    final request = UploadFileRequest(file: file);
    return request;
  }

  Future<UploadFileResponse> uploadFile(UploadFileRequest request) async {
    return uploadFileService.uploadFile(request).then((value) {
      emit(state.copyWith(
          uploadFileResponse: value, uploadFileStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(uploadFileStatus: BooleanStatus.error));
      throw error;
    });
  }
}
