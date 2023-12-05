part of 'restaurant_outlets_add_menu_dropdown_cubit.dart';

@freezed
class RestaurantOutletsAddMenuDropdownState
    with _$RestaurantOutletsAddMenuDropdownState {
  const factory RestaurantOutletsAddMenuDropdownState.initial({
    int? first,
    int? count,
    @Default("createdTime") String? columnName,
    @Default("DESC") String? columnOrder,
    CreateRestaurantOutletResponse? createRestaurantOutletResponse,
    @Default(BooleanStatus.initial) BooleanStatus createRestaurantOutletStatus,
  }) = _Initial;
}
