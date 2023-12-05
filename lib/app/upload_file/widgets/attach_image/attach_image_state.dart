part of 'attach_image_cubit.dart';

@freezed
class AttachImageState with _$AttachImageState {
  const factory AttachImageState.initial({
    String? fileId,
    String? imageType,
    String? entity,
    String? attachImageResponse,
    @Default(BooleanStatus.initial) BooleanStatus attachImageStatus,
  }) = _Initial;
}
