import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet/get_restaurant_outlet_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet/get_restaurant_outlet_response.dart';
import 'package:restaurant_pos/app/restaurant_outlets/services/restaurant_service.dart';

import '../../widgets/restaurant_outlets_get_menu_items_by_menu/restaurant_outlets_get_menu_items_by_menu_cubit.dart';
import '/app/core/blocs/base_cubit.dart';

part 'restaurant_outlets_main_screen_cubit.freezed.dart';
part 'restaurant_outlets_main_screen_state.dart';

class RestaurantOutletsMainScreenCubit
    extends BaseCubit<RestaurantOutletsMainScreenState> {
  late RestaurantService restaurantService;

  RestaurantOutletsMainScreenCubit(
      {required String restaurantOutletId,
      String? selectedWidget,
      required super.context})
      : super(
            initialState: RestaurantOutletsMainScreenState.initial(
                restaurantOutletId: restaurantOutletId,
                selectedWidgetName: selectedWidget ?? 'ORDERS',
                getRestaurantOutletStatus: BooleanStatus.initial)) {
    restaurantService = GetIt.instance<RestaurantService>();
    getRestaurantOutlet(createRequestData());
  }

  selectWidget(String value) {
    emit(state.copyWith(selectedWidgetName: value));
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
