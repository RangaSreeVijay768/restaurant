import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:restaurant_pos/app/core/models/menus/menu_item.dart';
import 'package:restaurant_pos/app/menu/repo/models/update_menu_item/update_menu_item_request.dart';
import 'package:restaurant_pos/app/menu/services/menu_service.dart';
import 'package:restaurant_pos/app/restaurant_outlets/services/restaurant_service.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_update_menu_item_form_cubit.freezed.dart';

part 'restaurant_outlets_update_menu_item_form_state.dart';

class RestaurantOutletsUpdateMenuItemFormCubit
    extends BaseFormCubit<RestaurantOutletsUpdateMenuItemFormState> {
  RestaurantOutletsUpdateMenuItemFormCubit(
      {required MenuItem menuItem, required super.context})
      : super(
            initialState: RestaurantOutletsUpdateMenuItemFormState.initial(
                menuItem: menuItem)) {
    menuService = GetIt.instance<MenuService>();
  }

  late RestaurantService restaurantService;
  late MenuService menuService;

  @override
  FormGroup getFormGroup() {
    return FormGroup({
      'menuItemName': FormControl<String>(validators: [Validators.required]),
      'price': FormControl<String>(validators: [Validators.number]),
    });
  }

  @override
  void afterInitialize(FormGroup formGroup) {
    formGroup.control('menuItemName').value = state.menuItem.menuItemName;
    formGroup.control('price').value = state.menuItem.price?.toStringAsFixed(0);
  }

  @override
  void updateFormValidationState(ControlStatus event) {
    emit(state.copyWith(formValid: event));
  }

  UpdateMenuItemRequest createRequestData(
      {String? menuItemName, num? menuItemPrice}) {
    final request = UpdateMenuItemRequest(
        menuItemId: state.menuItem.menuItemId!,
        menuItemName: menuItemName ?? formGroup.control('menuItemName').value,
        price: menuItemPrice ?? formGroup.control('price').value);
    return request;
  }

  Future<void> updateMenuItem(UpdateMenuItemRequest request) async {
    return menuService.updateMenuItem(request).then((value) {
      emit(state.copyWith(updateMenuItemStatus: BooleanStatus.success));
      return value;
    }).catchError((error) {
      emit(state.copyWith(updateMenuItemStatus: BooleanStatus.error));
      throw error;
    });
  }
}
