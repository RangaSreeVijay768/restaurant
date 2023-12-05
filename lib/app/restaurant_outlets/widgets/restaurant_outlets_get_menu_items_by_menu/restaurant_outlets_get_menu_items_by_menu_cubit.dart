import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/logger/log.dart';
import 'package:restaurant_pos/app/core/models/menus/menu.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_menu_items_by_menu/get_menu_items_by_menu_request.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_menu_items_by_menu/get_menu_items_by_menu_response.dart';
import 'package:restaurant_pos/app/menu/services/menu_service.dart';
import 'package:restaurant_pos/app/upload_file/widgets/get_image_by_entity_id_and_image_type/get_image_by_entity_id_and_image_type_cubit.dart';
import '../../../core/models/menus/menu_item.dart';
import '../../../orders/services/orders_service.dart';
import '../../../orders/widgets/orders_create_order_item/orders_create_order_item_cubit.dart';
import '../restaurant_outlets_update_menu_item_modal/restaurant_outlets_update_menu_item_modal_cubit.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_get_menu_items_by_menu_state.dart';

part 'restaurant_outlets_get_menu_items_by_menu_cubit.freezed.dart';

class RestaurantOutletsGetMenuItemsByMenuCubit
    extends BaseCubit<RestaurantOutletsGetMenuItemsByMenuState> {
  late MenuService menuService;
  late OrdersService ordersService;

  RestaurantOutletsGetMenuItemsByMenuCubit(
      {required Menu menu, String? status,required super.context})
      : super(
            initialState: RestaurantOutletsGetMenuItemsByMenuState.initial(
          getMenuItemsByMenuStatus: BooleanStatus.initial,
          menu: menu,
          value: 1,
          status: status,
          menuItemCountMap: HashMap(),
        )) {
    menuService = GetIt.instance<MenuService>();
    getMenuItemsByMenu(createRequestData());
  }

  GetMenuItemsByMenuRequest createRequestData(
      {String? menuId,
      String? filterMenuItemName,
        String? status,
      int? first,
      int? count,
      String? columnName,
      String? columnOrder}) {
    final request = GetMenuItemsByMenuRequest(
        menu: menuId ?? state.menu.menuId,
        filterMenuItemName: filterMenuItemName ?? state.filterMenuItemName,
        status: status??state.status,
        first: first ?? state.first,
        count: count ?? state.count,
        columnName: columnName ?? state.columnName,
        columnOrder: columnOrder ?? state.columnOrder);
    return request;
  }

  Future<List<GetMenuItemsByMenuResponse>> getMenuItemsByMenu(
      GetMenuItemsByMenuRequest request) async {
    logger.d(state.menu.toJson());
    return menuService.getMenuItemsByMenu(request).then((value) {
      emit(state.copyWith(
          getMenuItemsByMenuResponse: value,
          getMenuItemsByMenuStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(getMenuItemsByMenuStatus: BooleanStatus.error));
      throw error;
    });
  }

  void increaseMenuItemCount(MenuItem menuItem, int value) {
    Map<MenuItem, int> menuItemCountMap = Map.from(state.menuItemCountMap);
    menuItemCountMap[menuItem] = (menuItemCountMap[menuItem] ?? 0) + value;
    emit(state.copyWith(menuItemCountMap: menuItemCountMap));
  }

  void decreaseMenuItemCount(MenuItem menuItem, int value) {
    Map<MenuItem, int> menuItemCountMap = Map.from(state.menuItemCountMap);
    int currentCount = menuItemCountMap[menuItem] ?? 0;
    if (currentCount >= 1) {
      menuItemCountMap[menuItem] = currentCount - value;
      emit(state.copyWith(menuItemCountMap: menuItemCountMap));
    }
  }

// addDrinkQuantity(MenuItem menuItem, int drinkQuantity) {
//   Map<MenuItem, int> menuItemCountMap = Map.from(state.menuItemCountMap);
//   menuItemCountMap[menuItem] = (state.menuItemCountMap[menuItem] ?? 0) + drinkQuantity;
//   emit(state.copyWith(menuItemCountMap: menuItemCountMap));
// }
}
