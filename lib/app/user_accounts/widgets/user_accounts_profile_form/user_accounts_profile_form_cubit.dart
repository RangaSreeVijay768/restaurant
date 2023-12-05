import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'user_accounts_profile_form_state.dart';

part 'user_accounts_profile_form_cubit.freezed.dart';

class UserAccountsProfileFormCubit
    extends BaseFormCubit<UserAccountsProfileFormState> {
  UserAccountsProfileFormCubit({required super.context, required String restaurantName, required String address})
      : super(initialState: UserAccountsProfileFormState.initial(restaurantName: restaurantName, address: address));

  @override
  FormGroup getFormGroup() {
    return FormGroup({
      'restaurantName' : FormControl<String>(validators: [Validators.required]),
      'address' : FormControl<String>(validators: [Validators.required]),
    });
  }

  @override
  void afterInitialize(FormGroup formGroup) {
    formGroup.control('restaurantName').value = state.restaurantName;
    formGroup.control('address').value = state.address;
  }

  @override
  void updateFormValidationState(ControlStatus event) {
    emit(state.copyWith(formValid: event));
  }
}
