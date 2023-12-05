part of 'restaurant_outlets_update_menu_item_form_cubit.dart';

@freezed
class RestaurantOutletsUpdateMenuItemFormState
    with _$RestaurantOutletsUpdateMenuItemFormState {
  const factory RestaurantOutletsUpdateMenuItemFormState.initial({
    @Default(ControlStatus.pending)ControlStatus formValid,
    required MenuItem menuItem,
    String? updateMenuItem,
    @Default(BooleanStatus.initial) BooleanStatus updateMenuItemStatus,
  }) = _Initial;
}
