import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurant_pos/app/menu/repo/models/menu_get_all_menu_items/menu_get_all_menu_items_request.dart';
import '../../../core/database/boolean_status.dart';
import '../../repo/models/menu_get_all_menu_items/menu_get_all_menu_items_response.dart';
import '../../services/menu_service.dart';
import '/app/core/blocs/base_cubit.dart';

part 'menu_get_all_menu_items_widget_state.dart';

part 'menu_get_all_menu_items_widget_cubit.freezed.dart';

class MenuGetAllMenuItemsWidgetCubit
    extends BaseCubit<MenuGetAllMenuItemsWidgetState> {
  late MenuService menuService;

  MenuGetAllMenuItemsWidgetCubit({required super.context})
      : super(initialState: const MenuGetAllMenuItemsWidgetState.initial(
      menuGetAllMenuItemsStatus: BooleanStatus.initial)) {
    menuService = GetIt.instance<MenuService>();
    menuGetAllMenuItemsResponse(createRequestData());
  }

  MenuGetAllMenuItemsRequest createRequestData(){
    return MenuGetAllMenuItemsRequest();
  }

  Future<List<MenuGetAllMenuItemsResponse>> menuGetAllMenuItemsResponse(
      MenuGetAllMenuItemsRequest request) {
    return menuService.menuGetAllMenuItems(request).then((value) {
      emit(state.copyWith(
          menuGetAllMenuItemsResponse: value,
          menuGetAllMenuItemsStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(menuGetAllMenuItemsStatus: BooleanStatus.error));
    });
  }

}
