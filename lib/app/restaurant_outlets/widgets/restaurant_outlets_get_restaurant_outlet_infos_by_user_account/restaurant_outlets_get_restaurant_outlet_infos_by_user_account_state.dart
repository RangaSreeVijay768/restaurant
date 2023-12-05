part of 'restaurant_outlets_get_restaurant_outlet_infos_by_user_account_cubit.dart';

@freezed
class RestaurantOutletsGetRestaurantOutletInfosByUserAccountState
    with _$RestaurantOutletsGetRestaurantOutletInfosByUserAccountState {
  const factory RestaurantOutletsGetRestaurantOutletInfosByUserAccountState.initial({
    String? status,
    List<GetRestaurantOutletInfosByUserAccountResponse>?
        getRestaurantOutletInfosByUserAccountResponse,
    required BooleanStatus getRestaurantOutletInfosByUserAccountStatus,
    int? first,
    int? count,
    @Default("createdTime") String? columnName,
    @Default("DESC") String? columnOrder,
  }) = _Initial;
}
