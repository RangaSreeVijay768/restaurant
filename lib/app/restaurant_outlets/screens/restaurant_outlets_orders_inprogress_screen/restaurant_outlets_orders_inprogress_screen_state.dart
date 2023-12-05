part of 'restaurant_outlets_orders_inprogress_screen_cubit.dart';

@freezed
class RestaurantOutletsOrdersInprogressScreenState
    with _$RestaurantOutletsOrdersInprogressScreenState {
  const factory RestaurantOutletsOrdersInprogressScreenState.initial(
      {required String restaurantOutletId,
        GetRestaurantOutletInfoResponse? getRestaurantOutletInfoResponse,
    @Default(BooleanStatus.initial) BooleanStatus getRestaurantOutletInfoStatus,
 }) = _Initial;
}
