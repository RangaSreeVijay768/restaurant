part of 'restaurant_outlets_create_restaurant_outlet_form_cubit.dart';

@freezed
class RestaurantOutletsCreateRestaurantOutletFormState
    with _$RestaurantOutletsCreateRestaurantOutletFormState {
  const factory RestaurantOutletsCreateRestaurantOutletFormState.initial({
    String? restaurantOutletName,
    String? restaurantOutletDescription,
    @Default(BooleanStatus.initial) BooleanStatus createRestaurantOutletStatus,
    String? createRestaurantOutletResponse,
    @Default(ControlStatus.pending)ControlStatus formValid
}) = _Initial;
}
