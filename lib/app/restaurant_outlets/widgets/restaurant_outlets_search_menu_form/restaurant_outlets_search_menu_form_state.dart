part of 'restaurant_outlets_search_menu_form_cubit.dart';

@freezed
class RestaurantOutletsSearchMenuFormState
    with _$RestaurantOutletsSearchMenuFormState {
  const factory RestaurantOutletsSearchMenuFormState.initial({
    @Default(ControlStatus.pending)ControlStatus formValid,
    String? filterMenuItemName,
    String? searchText,
  }) = _Initial;
}
