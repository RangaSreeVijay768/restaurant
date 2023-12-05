part of 'get_image_by_entity_id_and_image_type_cubit.dart';

@freezed
class GetImageByEntityIdAndImageTypeState
    with _$GetImageByEntityIdAndImageTypeState {
  const factory GetImageByEntityIdAndImageTypeState.initial({
    List<GetImageByEntityIdAndImageTypeResponse>? getImageByEntityIdAndImageTypeResponse,
    String? entity,
    String? imageType,
    String? alt,
    @Default(40) num size,
    @Default(BooleanStatus.initial) BooleanStatus getImageByEntityIdAndImageTypeStatus,
    UploadFileState? uploadFileState,
    CoreImagePickerState? coreImagePickerState,
    MenuItem? menuItem
  }) = _Initial;
}
