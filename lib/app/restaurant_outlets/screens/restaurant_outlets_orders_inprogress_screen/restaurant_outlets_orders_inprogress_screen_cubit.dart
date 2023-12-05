import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/core/logger/log.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet/get_restaurant_outlet_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet/get_restaurant_outlet_response.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_info/get_restaurant_outlet_info_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_info/get_restaurant_outlet_info_response.dart';
import 'package:restaurant_pos/app/restaurant_outlets/services/restaurant_service.dart';

import '/app/core/blocs/base_cubit.dart';

part 'restaurant_outlets_orders_inprogress_screen_cubit.freezed.dart';

part 'restaurant_outlets_orders_inprogress_screen_state.dart';

class RestaurantOutletsOrdersInprogressScreenCubit
    extends BaseCubit<RestaurantOutletsOrdersInprogressScreenState> {
  RestaurantOutletsOrdersInprogressScreenCubit(
      {required String restaurantOutletId, required super.context})
      : super(
            initialState: RestaurantOutletsOrdersInprogressScreenState.initial(
                restaurantOutletId: restaurantOutletId)) {
    restaurantService = GetIt.instance<RestaurantService>();
    getRestaurantOutletInfo(createRequestData());
  }

  late RestaurantService restaurantService;

  GetRestaurantOutletInfoRequest createRequestData(
      {String? restaurantOutletId}) {
    final request = GetRestaurantOutletInfoRequest(
        restaurantOutletId: restaurantOutletId ?? state.restaurantOutletId);
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
