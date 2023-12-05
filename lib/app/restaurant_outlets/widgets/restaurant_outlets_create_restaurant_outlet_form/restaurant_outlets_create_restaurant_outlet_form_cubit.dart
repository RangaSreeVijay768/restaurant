import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/create_restaurant_outlet/create_restaurant_outlet_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/services/restaurant_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_create_restaurant_outlet_form_state.dart';

part 'restaurant_outlets_create_restaurant_outlet_form_cubit.freezed.dart';

class RestaurantOutletsCreateRestaurantOutletFormCubit
    extends BaseFormCubit<RestaurantOutletsCreateRestaurantOutletFormState> {
  late RestaurantService restaurantService;

  RestaurantOutletsCreateRestaurantOutletFormCubit({required super.context})
      : super(
            initialState:
                RestaurantOutletsCreateRestaurantOutletFormState.initial()) {
    restaurantService = GetIt.instance<RestaurantService>();
  }

  CreateRestaurantOutletRequest createRequestData({
    String? restaurantOutletName,
    String? address,
  }) {
    final request = CreateRestaurantOutletRequest(
      restaurantOutletName:
          restaurantOutletName ?? formGroup.control('restaurantName').value,
      address: address ?? formGroup.control('address').value
    );
    return request;
  }

  Future<String> createRestaurantOutlet(
      CreateRestaurantOutletRequest request) async {
    return restaurantService.createRestaurantOutlet(request).then((value) {
      emit(state.copyWith(
          createRestaurantOutletResponse: value,
          createRestaurantOutletStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(createRestaurantOutletStatus: BooleanStatus.error));
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
  void updateFormValidationState(ControlStatus event) {
    emit(state.copyWith(formValid: event));
  }
}
