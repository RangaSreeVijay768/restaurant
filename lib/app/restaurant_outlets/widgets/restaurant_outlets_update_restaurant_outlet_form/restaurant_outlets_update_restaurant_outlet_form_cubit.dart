import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/update_restaurant_outlet/update_restaurant_outlet_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/update_restaurant_outlet/update_restaurant_outlet_response.dart';
import '../../services/restaurant_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_update_restaurant_outlet_form_state.dart';

part 'restaurant_outlets_update_restaurant_outlet_form_cubit.freezed.dart';

class RestaurantOutletsUpdateRestaurantOutletFormCubit
    extends BaseFormCubit<RestaurantOutletsUpdateRestaurantOutletFormState> {
  late RestaurantService restaurantService;

  RestaurantOutletsUpdateRestaurantOutletFormCubit(
      {required super.context,
      required RestaurantOutlet restaurantOutlet})
      : super(
            initialState:
                RestaurantOutletsUpdateRestaurantOutletFormState.initial(
                    restaurantOutlet: restaurantOutlet)) {
    restaurantService = GetIt.instance<RestaurantService>();
  }

  UpdateRestaurantOutletRequest createRequestData(
      {String? restaurantName, String? address}) {
    final request = UpdateRestaurantOutletRequest(
      restaurantOutletId: state.restaurantOutlet.restaurantOutletId,
      restaurantOutletName: restaurantName ?? formGroup.control('restaurantName').value,
      address: address ?? formGroup.control('address').value
    );
    return request;
  }

  Future<void> updateRestaurantOutlet(
      UpdateRestaurantOutletRequest request) async {
    return restaurantService.updateRestaurantOutlet(request).then((value) {
      emit(state.copyWith(updateRestaurantOutletStatus: BooleanStatus.success));
      showSuccessMessage('Profile Changes saved Successfully');
      return value;
    }).catchError((error) {
      emit(state.copyWith(updateRestaurantOutletStatus: BooleanStatus.error));
      throw error;
    });
  }

  @override
  FormGroup getFormGroup() {
    return FormGroup({
      'restaurantName': FormControl<String>(validators: [Validators.required]),
      'address': FormControl<String>(validators: [Validators.required]),
    });
  }

  @override
  void afterInitialize(FormGroup formGroup) {
    formGroup.control('restaurantName').value = state.restaurantOutlet.restaurantOutletName;
    formGroup.control('address').value = state.restaurantOutlet.address;
  }

  @override
  void updateFormValidationState(ControlStatus event) {
    emit(state.copyWith(formValid: event));
  }
}
