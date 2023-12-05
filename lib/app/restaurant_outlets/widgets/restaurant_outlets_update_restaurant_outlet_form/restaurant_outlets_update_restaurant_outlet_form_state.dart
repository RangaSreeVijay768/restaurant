part of 'restaurant_outlets_update_restaurant_outlet_form_cubit.dart';

@freezed
class RestaurantOutletsUpdateRestaurantOutletFormState
    with _$RestaurantOutletsUpdateRestaurantOutletFormState {
  const factory RestaurantOutletsUpdateRestaurantOutletFormState.initial({
    @Default(ControlStatus.pending) ControlStatus formValid,
    required RestaurantOutlet restaurantOutlet,
    UpdateRestaurantOutletResponse? updateRestaurantOutletResponse,
    @Default(BooleanStatus.initial) BooleanStatus updateRestaurantOutletStatus,
  }) = _Initial;
}
