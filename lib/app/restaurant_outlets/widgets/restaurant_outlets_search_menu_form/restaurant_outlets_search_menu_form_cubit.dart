import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_search_menu_form_state.dart';

part 'restaurant_outlets_search_menu_form_cubit.freezed.dart';

class RestaurantOutletsSearchMenuFormCubit
    extends BaseFormCubit<RestaurantOutletsSearchMenuFormState> {
  RestaurantOutletsSearchMenuFormCubit({required super.context})
      : super(initialState: RestaurantOutletsSearchMenuFormState.initial(searchText: ''));

  @override
  FormGroup getFormGroup() {
    return FormGroup({
      'search': FormControl<String>(),
    });
  }

  @override
  void updateFormValidationState(ControlStatus event) {
    emit(state.copyWith(formValid: event));
  }

  @override
  void updateFormGroupState(FormGroup formGroup) {
    emitState(
        state.copyWith(filterMenuItemName: formGroup.control('search').value));
  }

  void filterSearchResults(String items) {
    emit(state.copyWith(searchText: items));
  }
  void clearSearch() {
    emit(state.copyWith(searchText: ''));
  }

}
