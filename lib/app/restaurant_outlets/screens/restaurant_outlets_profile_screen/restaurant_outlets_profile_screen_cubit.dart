import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import '../../../core/widgets/core_image_picker/core_image_picker_cubit.dart';
import '../../../upload_file/widgets/upload_file/upload_file_cubit.dart';
import '../../repos/models/get_restaurant_outlet/get_restaurant_outlet_request.dart';
import '../../repos/models/get_restaurant_outlet/get_restaurant_outlet_response.dart';
import '../../services/restaurant_service.dart';
import '../../widgets/restaurant_outlets_update_restaurant_outlet_form/restaurant_outlets_update_restaurant_outlet_form_cubit.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_profile_screen_state.dart';

part 'restaurant_outlets_profile_screen_cubit.freezed.dart';

class RestaurantOutletsProfileScreenCubit
    extends BaseCubit<RestaurantOutletsProfileScreenState> {
  late RestaurantService restaurantService;

  RestaurantOutletsProfileScreenCubit({
    required super.context,
    required String restaurantOutletId,
  }) : super(
            initialState: RestaurantOutletsProfileScreenState.initial(
                restaurantOutletId: restaurantOutletId)) {
    restaurantService = GetIt.instance<RestaurantService>();
    getRestaurantOutlet(createRequestData());
  }

  GetRestaurantOutletRequest createRequestData({String? restaurantOutletId}) {
    final request = GetRestaurantOutletRequest(
        restaurantOutletId: restaurantOutletId ?? state.restaurantOutletId);
    return request;
  }

  Future<GetRestaurantOutletResponse> getRestaurantOutlet(
      GetRestaurantOutletRequest request) async {
    return restaurantService.getRestaurantOutlet(request).then((value) {
      emit(state.copyWith(
          getRestaurantOutletResponse: value,
          getRestaurantOutletStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(getRestaurantOutletStatus: BooleanStatus.error));
    });
  }
}
