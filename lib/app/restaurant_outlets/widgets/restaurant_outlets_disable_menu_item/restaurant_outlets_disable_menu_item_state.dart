part of 'restaurant_outlets_disable_menu_item_cubit.dart';

@freezed
class RestaurantOutletsDisableMenuItemState
    with _$RestaurantOutletsDisableMenuItemState {
  const factory RestaurantOutletsDisableMenuItemState.initial({
    required MenuItem menuItem,
    required Menu menu,
    @Default(BooleanStatus.initial) BooleanStatus disableMenuItemStatus,
    RestaurantOutletsGetMenuItemsByMenuState? restaurantOutletsGetMenuItemsByMenuState
  }) = _Initial;
}
