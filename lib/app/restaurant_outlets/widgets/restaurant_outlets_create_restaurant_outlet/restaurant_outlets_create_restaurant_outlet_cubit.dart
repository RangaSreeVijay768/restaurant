import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_create_restaurant_outlet_form/restaurant_outlets_create_restaurant_outlet_form_cubit.dart';

import '../../../core/widgets/core_image_picker/core_image_picker_cubit.dart';
import '../../../upload_file/widgets/upload_file/upload_file_cubit.dart';
import '/app/core/blocs/base_cubit.dart';
import '../../repos/models/create_restaurant_outlet/create_restaurant_outlet_request.dart';
import '../../services/restaurant_service.dart';

part 'restaurant_outlets_create_restaurant_outlet_cubit.freezed.dart';
part 'restaurant_outlets_create_restaurant_outlet_state.dart';

class RestaurantOutletsCreateRestaurantOutletCubit
    extends BaseCubit<RestaurantOutletsCreateRestaurantOutletState> {
  late RestaurantService restaurantService;

  RestaurantOutletsCreateRestaurantOutletCubit({required super.context})
      : super(
            initialState: RestaurantOutletsCreateRestaurantOutletState.initial(
                createRestaurantOutletStatus: BooleanStatus.initial,
                formGroup: RestaurantOutletsCreateRestaurantOutletCubit
                    .getFormGroup())) {
    restaurantService = GetIt.instance<RestaurantService>();
  }

  CreateRestaurantOutletRequest createRequestData(
      {String? restaurantOutletName, String? restaurantOutletDescription}) {
    CreateRestaurantOutletRequest createRestaurantOutletRequest =
        CreateRestaurantOutletRequest(
            restaurantOutletName: restaurantOutletName ??
                state.formGroup.control('restaurantName').value ??
                state.restaurantOutletName,
            restaurantOutletDescription: restaurantOutletDescription ??
                state.restaurantOutletDescription);
    return createRestaurantOutletRequest;
  }

  Future<String> createRestaurantOutlet(
      CreateRestaurantOutletRequest createRestaurantOutletRequest) async {
    emit(state.copyWith(createRestaurantOutletStatus: BooleanStatus.pending));
    String restaurantOutletId = await restaurantService
        .createRestaurantOutlet(createRestaurantOutletRequest)
        .whenComplete(() => emit(state.copyWith(
            createRestaurantOutletStatus: BooleanStatus.active)));
    return Future.value(restaurantOutletId);
  }

  static getFormGroup() {
    return FormGroup({
      'restaurantName': FormControl<String>(validators: [Validators.required]),
    });
  }

  void updateFormValidationState(ControlStatus event) {
    emit(state.copyWith(formValid: event));
  }
}
