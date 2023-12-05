part of 'restaurant_outlets_create_order_item_modal_content_cubit.dart';

@freezed
class RestaurantOutletsCreateOrderItemModalContentState
    with _$RestaurantOutletsCreateOrderItemModalContentState {
  const factory RestaurantOutletsCreateOrderItemModalContentState.initial({
    OrdersCreateOrderItemState? ordersCreateOrderItemState,
    OrdersAddOrderItemsState? ordersAddOrderItemsState,
    RestaurantOutletsSearchMenuFormState? restaurantOutletsSearchMenuFormState,
    RestaurantOutletsGetMenuItemsByMenuState? restaurantOutletsGetMenuItemsByMenuState
}) = _Initial;
}
