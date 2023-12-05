part of 'menu_get_menu_item_cubit.dart';

@freezed
class MenuGetMenuItemState with _$MenuGetMenuItemState {
  const factory MenuGetMenuItemState.initial({
    GetMenuItemResponse? getMenuItemResponse,
    @Default(BooleanStatus.initial) BooleanStatus getMenuItemStatus,
    required String menuItemId
  }) = _Initial;
}
