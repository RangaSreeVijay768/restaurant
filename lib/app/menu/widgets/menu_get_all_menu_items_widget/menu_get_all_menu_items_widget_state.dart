part of 'menu_get_all_menu_items_widget_cubit.dart';

@freezed
class MenuGetAllMenuItemsWidgetState with _$MenuGetAllMenuItemsWidgetState {
  const factory MenuGetAllMenuItemsWidgetState.initial({
    String? menuItemDescription,
    String? menuItemId,
    String? menuItemName,
    String? status,
    int? first,
    int? count,
    String? columnName,
    String? columnOrder,
    BooleanStatus? menuGetAllMenuItemsStatus,
    List<MenuGetAllMenuItemsResponse>? menuGetAllMenuItemsResponse

}) = _Initial;
}
