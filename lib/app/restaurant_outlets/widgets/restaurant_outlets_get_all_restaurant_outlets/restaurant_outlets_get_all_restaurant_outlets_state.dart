part of 'restaurant_outlets_get_all_restaurant_outlets_cubit.dart';

@freezed
class RestaurantOutletsGetAllRestaurantOutletsState
    with _$RestaurantOutletsGetAllRestaurantOutletsState {
  const factory RestaurantOutletsGetAllRestaurantOutletsState.initial(
      {String? status,
      int? first,
      int? count,
      String? columnName,
      String? columnOrder,
      List<GetAllRestaurantOutletsResponse>? getAllRestaurantOutletsResponse,
      required BooleanStatus getAllRestaurantOutletsStatus}) = _Initial;
}
