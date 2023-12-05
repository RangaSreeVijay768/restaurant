import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:restaurant_pos/app/core/models/menus/menu.dart';
import 'package:restaurant_pos/app/menu/repo/models/create_menu_item/create_menu_item_request.dart';
import 'package:restaurant_pos/app/menu/services/menu_service.dart';
import 'package:restaurant_pos/app/restaurant_outlets/services/restaurant_service.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_add_menu_item_form_cubit.freezed.dart';

part 'restaurant_outlets_add_menu_item_form_state.dart';

class RestaurantOutletsAddMenuItemFormCubit
    extends BaseFormCubit<RestaurantOutletsAddMenuItemFormState> {
  late RestaurantService restaurantService;
  late MenuService menuService;

  RestaurantOutletsAddMenuItemFormCubit({required super.context, Menu? menu})
      : super(
            initialState:
                RestaurantOutletsAddMenuItemFormState.initial(menu: menu)) {
    menuService = GetIt.instance<MenuService>();
  }

  @override
  FormGroup getFormGroup() {
    return FormGroup({
      'menuItemName': FormControl<String>(validators: [Validators.required]),
      'price': FormControl<String>(validators: [Validators.number]),
    });
  }

  @override
  void updateFormValidationState(ControlStatus event) {
    emit(state.copyWith(formValid: event));
  }

  CreateMenuItemRequest createRequestData({String? menu}) {
    final request = CreateMenuItemRequest(
        menuItemName: formGroup.control('menuItemName').value,
        price: double.parse(formGroup.control('price').value),
        menu: menu ?? state.menu!.menuId);
    return request;
  }

  Future<String> createMenuItem(CreateMenuItemRequest request) async {
    return menuService.createMenuItem(request).then((value) {
      emit(state.copyWith(
          addMenuItemResponse: value,
          addMenuItemStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(addMenuItemStatus: BooleanStatus.error));
      throw error;
    });
  }
}
