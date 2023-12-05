import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_info/get_restaurant_outlet_info_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_info/get_restaurant_outlet_info_response.dart';
import '../../services/restaurant_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_get_restaurant_outlet_info_state.dart';

part 'restaurant_outlets_get_restaurant_outlet_info_cubit.freezed.dart';

class RestaurantOutletsGetRestaurantOutletInfoCubit
    extends BaseCubit<RestaurantOutletsGetRestaurantOutletInfoState> {
  late RestaurantService restaurantService;

  RestaurantOutletsGetRestaurantOutletInfoCubit({required super.context})
      : super(
            initialState: RestaurantOutletsGetRestaurantOutletInfoState.initial(
                getRestaurantOutletInfoStatus: BooleanStatus.initial)) {
    restaurantService = GetIt.instance<RestaurantService>();
    this.getRestaurantOutletInfo(this.createRequestData());
  }

  GetRestaurantOutletInfoRequest createRequestData(
      {String? status,
        int? first,
        int? count,
        String? columnName,
        String? columnOrder, String? restaurantOutletId}) {
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
