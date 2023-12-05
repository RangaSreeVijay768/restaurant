part of 'restaurant_outlets_menu_screen_cubit.dart';

@freezed
class RestaurantOutletsMenuScreenState with _$RestaurantOutletsMenuScreenState {
  const factory RestaurantOutletsMenuScreenState.initial(
      {required String restaurantOutletId,
      GetRestaurantOutletInfoResponse? getRestaurantOutletInfoResponse,
        RestaurantOutletsSearchMenuFormState? restaurantOutletsSearchMenuFormState,
      required BooleanStatus getRestaurantOutletInfoStatus}) = _Initial;
}
