import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import '../../../core/database/boolean_status.dart';
import '../../repos/models/get_restaurant_outlet/get_restaurant_outlet_request.dart';
import '../../repos/models/get_restaurant_outlet/get_restaurant_outlet_response.dart';
import '../../services/restaurant_service.dart';
import '/app/core/blocs/base_cubit.dart';

part 'restaurant_outlets_orders_screen_state.dart';

part 'restaurant_outlets_orders_screen_cubit.freezed.dart';

class RestaurantOutletsOrdersScreenCubit
    extends BaseCubit<RestaurantOutletsOrdersScreenState> {
  late RestaurantService restaurantService;
  RestaurantOutletsOrdersScreenCubit({required String restaurantOutletId, required super.context})
      : super(initialState: RestaurantOutletsOrdersScreenState.initial(
      restaurantOutletId: restaurantOutletId,
      getRestaurantOutletStatus: BooleanStatus.initial)){
    restaurantService = GetIt.instance<RestaurantService>();
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
