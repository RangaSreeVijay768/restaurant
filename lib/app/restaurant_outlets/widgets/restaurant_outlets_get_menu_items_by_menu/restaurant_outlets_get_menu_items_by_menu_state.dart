part of 'restaurant_outlets_get_menu_items_by_menu_cubit.dart';

@freezed
class RestaurantOutletsGetMenuItemsByMenuState
    with _$RestaurantOutletsGetMenuItemsByMenuState {
  const factory RestaurantOutletsGetMenuItemsByMenuState.initial(
      {required Menu menu,
          String? filterMenuItemName,
          String? status,
      int? first,
      int? count,
      int? value,
      @Default("createdTime") String? columnName,
      @Default("DESC") String? columnOrder,
          RestaurantOutletsUpdateMenuItemModalState? restaurantOutletsUpdateMenuItemModalState,
      List<GetMenuItemsByMenuResponse>? getMenuItemsByMenuResponse,
      required BooleanStatus getMenuItemsByMenuStatus,
      required Map<MenuItem, int> menuItemCountMap,
          GetImageByEntityIdAndImageTypeState? getImageByEntityIdAndImageTypeState,
      OrdersCreateOrderItemState? ordersCreateOrderItemState}) = _Initial;
}
