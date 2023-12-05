part of 'restaurant_outlets_profile_screen_cubit.dart';

@freezed
class RestaurantOutletsProfileScreenState
    with _$RestaurantOutletsProfileScreenState {
  const factory RestaurantOutletsProfileScreenState.initial({
    ImageSource? imageSource,
    CoreImagePickerState? coreImagePickerState,
    UploadFileState? uploadFileState,
    RestaurantOutletsUpdateRestaurantOutletFormState? restaurantOutletsUpdateRestaurantOutletFormState,
    required String restaurantOutletId,
    GetRestaurantOutletResponse? getRestaurantOutletResponse,
    @Default(BooleanStatus.initial) BooleanStatus getRestaurantOutletStatus,
  }) = _Initial;
}
