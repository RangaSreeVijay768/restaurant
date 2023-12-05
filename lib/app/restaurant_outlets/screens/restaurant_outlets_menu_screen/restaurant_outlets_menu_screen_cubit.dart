import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_info/get_restaurant_outlet_info_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_info/get_restaurant_outlet_info_response.dart';
import 'package:restaurant_pos/app/restaurant_outlets/services/restaurant_service.dart';

import '../../widgets/restaurant_outlets_search_menu_form/restaurant_outlets_search_menu_form_cubit.dart';
import '/app/core/blocs/base_cubit.dart';

part 'restaurant_outlets_menu_screen_cubit.freezed.dart';
part 'restaurant_outlets_menu_screen_state.dart';

class RestaurantOutletsMenuScreenCubit
    extends BaseCubit<RestaurantOutletsMenuScreenState> {
  RestaurantOutletsMenuScreenCubit(
      {required String restaurantOutletId, required super.context})
      : super(
            initialState: RestaurantOutletsMenuScreenState.initial(
                restaurantOutletId: restaurantOutletId,
                getRestaurantOutletInfoStatus: BooleanStatus.initial)) {
    restaurantService = GetIt.instance<RestaurantService>();
    getRestaurantOutletInfo(createRequestData());
  }

  late RestaurantService restaurantService;

  GetRestaurantOutletInfoRequest createRequestData(
      {String? restaurantOutletId}) {
    final request = GetRestaurantOutletInfoRequest(
        restaurantOutletId: restaurantOutletId ?? state.restaurantOutletId!);
    return request;
  }

  Future<GetRestaurantOutletInfoResponse> getRestaurantOutletInfo(
      GetRestaurantOutletInfoRequest request) async {
    return restaurantService.getRestaurantOutletInfo(request).then((value) {
      emit(state.copyWith(
          getRestaurantOutletInfoResponse: value,
          getRestaurantOutletInfoStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(getRestaurantOutletInfoStatus: BooleanStatus.error));
      throw error;
    });
  }
}
