part of 'upload_file_cubit.dart';

@freezed
class UploadFileState with _$UploadFileState {
  const factory UploadFileState.initial({
    UploadFileResponse? uploadFileResponse,
    @Default(BooleanStatus.initial) BooleanStatus uploadFileStatus,
  }) = _Initial;
}
