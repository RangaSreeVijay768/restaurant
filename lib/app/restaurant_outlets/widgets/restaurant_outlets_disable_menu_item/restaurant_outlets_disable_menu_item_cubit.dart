import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/menu/repo/models/disable_menu_item/disable_menu_item_request.dart';
import 'package:restaurant_pos/app/menu/repo/models/disable_menu_item/disable_menu_item_response.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_get_menu_items_by_menu/restaurant_outlets_get_menu_items_by_menu_cubit.dart';
import '../../../core/models/menus/menu.dart';
import '../../../core/models/menus/menu_item.dart';
import '../../../menu/services/menu_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_disable_menu_item_state.dart';

part 'restaurant_outlets_disable_menu_item_cubit.freezed.dart';

class RestaurantOutletsDisableMenuItemCubit
    extends BaseCubit<RestaurantOutletsDisableMenuItemState> {
  late MenuService menuService;

  RestaurantOutletsDisableMenuItemCubit({required super.context, required MenuItem menuItem, required Menu menu})
      : super(initialState: RestaurantOutletsDisableMenuItemState.initial(menuItem: menuItem, menu: menu)) {
    menuService = GetIt.instance<MenuService>();
  }

  DisableMenuItemRequest createRequestData() {
    final request = DisableMenuItemRequest(menuItemId: state.menuItem.menuItemId);
    return request;
  }

  Future<void> disableMenuItem(DisableMenuItemRequest request) async {
    return menuService.disableMenuItem(request).then((value) {
      emit(state.copyWith(disableMenuItemStatus: BooleanStatus.success));
      return value;
    }).catchError((error) {
      emit(state.copyWith(disableMenuItemStatus: BooleanStatus.error));
      throw error;
    });
  }
}
