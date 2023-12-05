part of 'restaurant_outlets_create_restaurant_outlet_cubit.dart';

@freezed
class RestaurantOutletsCreateRestaurantOutletState
    with _$RestaurantOutletsCreateRestaurantOutletState {
  const factory RestaurantOutletsCreateRestaurantOutletState.initial({
      RestaurantOutletsCreateRestaurantOutletFormState? restaurantOutletsCreateRestaurantOutletFormState,
      String? restaurantOutletName,
      String? restaurantOutletDescription,
      required BooleanStatus createRestaurantOutletStatus,
      @Default(ControlStatus.pending)ControlStatus formValid,
      required FormGroup formGroup,
      CoreImagePickerState? coreImagePickerState,
      UploadFileState? uploadFileState,
      String? restaurantOutletId}) = _Initial;
}
