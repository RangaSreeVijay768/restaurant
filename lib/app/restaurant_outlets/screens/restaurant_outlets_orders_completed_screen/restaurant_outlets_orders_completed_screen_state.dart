part of 'restaurant_outlets_orders_completed_screen_cubit.dart';

@freezed
class RestaurantOutletsOrdersCompletedScreenState
    with _$RestaurantOutletsOrdersCompletedScreenState {
  const factory RestaurantOutletsOrdersCompletedScreenState.initial(
      {required String restaurantOutletId,
        GetRestaurantOutletInfoResponse? getRestaurantOutletInfoResponse,
        @Default(BooleanStatus.initial) BooleanStatus getRestaurantOutletInfoStatus,
      }) = _Initial;
}
