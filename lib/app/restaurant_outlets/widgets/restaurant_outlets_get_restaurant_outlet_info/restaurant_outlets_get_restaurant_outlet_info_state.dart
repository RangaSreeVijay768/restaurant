part of 'restaurant_outlets_get_restaurant_outlet_info_cubit.dart';

@freezed
class RestaurantOutletsGetRestaurantOutletInfoState
    with _$RestaurantOutletsGetRestaurantOutletInfoState {
  const factory RestaurantOutletsGetRestaurantOutletInfoState.initial({
    String? restaurantOutletId,
    GetRestaurantOutletInfoResponse? getRestaurantOutletInfoResponse,
    required BooleanStatus getRestaurantOutletInfoStatus,
  }) = _Initial;
}
