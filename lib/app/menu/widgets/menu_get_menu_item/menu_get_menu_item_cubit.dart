import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_menu_item/get_menu_item_request.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_menu_item/get_menu_item_response.dart';
import '../../services/menu_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'menu_get_menu_item_state.dart';

part 'menu_get_menu_item_cubit.freezed.dart';

class MenuGetMenuItemCubit extends BaseCubit<MenuGetMenuItemState> {
  late MenuService menuService;
  MenuGetMenuItemCubit({required super.context, required String menuItemId})
      : super(initialState: MenuGetMenuItemState.initial(menuItemId: menuItemId)){
    menuService = GetIt.instance<MenuService>();
    getMenuItem(createRequestData());
  }

    GetMenuItemRequest createRequestData({
      String? menuItemId
      }) {
        final request = GetMenuItemRequest(
          menuItemId: menuItemId ?? state.menuItemId
        );
        return request;
      }

    Future<GetMenuItemResponse> getMenuItem(
          GetMenuItemRequest request) async {
        return menuService.getMenuItem(request).then((value) {
          emit(state.copyWith(
              getMenuItemResponse: value,
              getMenuItemStatus: BooleanStatus.success));
          return Future.value(value);
        }).catchError((error) {
          emit(state.copyWith(getMenuItemStatus: BooleanStatus.error));
          throw error;
        });
      }
}
