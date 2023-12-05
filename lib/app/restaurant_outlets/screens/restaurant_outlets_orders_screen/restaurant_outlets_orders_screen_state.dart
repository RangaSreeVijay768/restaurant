part of 'restaurant_outlets_orders_screen_cubit.dart';

@freezed
class RestaurantOutletsOrdersScreenState
    with _$RestaurantOutletsOrdersScreenState {
  const factory RestaurantOutletsOrdersScreenState.initial({required String restaurantOutletId,
    GetRestaurantOutletResponse? getRestaurantOutletResponse,
    required BooleanStatus getRestaurantOutletStatus}) = _Initial;
}
