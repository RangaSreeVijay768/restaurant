part of 'restaurant_outlets_add_menu_item_form_cubit.dart';

@freezed
class RestaurantOutletsAddMenuItemFormState
    with _$RestaurantOutletsAddMenuItemFormState {
  const factory RestaurantOutletsAddMenuItemFormState.initial({
    Menu? menu,
    @Default(ControlStatus.pending)ControlStatus formValid,
    String? addMenuItemResponse,
    @Default(BooleanStatus.initial) BooleanStatus addMenuItemStatus,
  }) = _Initial;
}
