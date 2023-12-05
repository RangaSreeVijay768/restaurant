part of 'restaurant_outlets_add_menu_modal_content_cubit.dart';

@freezed
class RestaurantOutletsAddMenuModalContentState
    with _$RestaurantOutletsAddMenuModalContentState {
  const factory RestaurantOutletsAddMenuModalContentState.initial({
    required FormGroup formGroup,
    ControlStatus? formValidStatus,
    ImageSource? imageSource,
    CoreImagePickerState? coreImagePickerState,
    UploadFileState? uploadFileState,
    RestaurantOutletsAddMenuItemFormState? restaurantOutletsAddMenuItemFormState,
  }) = _Initial;
}
