part of 'restaurant_outlets_main_screen_cubit.dart';

@freezed
class RestaurantOutletsMainScreenState with _$RestaurantOutletsMainScreenState {
  const factory RestaurantOutletsMainScreenState.initial({
    @Default("ORDERS") String selectedWidgetName,
      required String restaurantOutletId,
      GetRestaurantOutletResponse? getRestaurantOutletResponse,
        RestaurantOutletsGetMenuItemsByMenuState? restaurantOutletsGetMenuItemsByMenuState,
        required BooleanStatus getRestaurantOutletStatus}) = _Initial;
}
