import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/core/logger/log.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_infos_by_user_account/get_restaurant_outlet_infos_by_user_account_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_infos_by_user_account/get_restaurant_outlet_infos_by_user_account_response.dart';
import 'package:restaurant_pos/app/restaurant_outlets/services/restaurant_service.dart';

import '/app/core/blocs/base_cubit.dart';

part 'restaurant_outlets_get_restaurant_outlet_infos_by_user_account_cubit.freezed.dart';

part 'restaurant_outlets_get_restaurant_outlet_infos_by_user_account_state.dart';

class RestaurantOutletsGetRestaurantOutletInfosByUserAccountCubit
    extends BaseCubit<
        RestaurantOutletsGetRestaurantOutletInfosByUserAccountState> {
  RestaurantOutletsGetRestaurantOutletInfosByUserAccountCubit(
      {required super.context, String? status})
      : super(
      initialState:
      RestaurantOutletsGetRestaurantOutletInfosByUserAccountState
          .initial(
          status: status,
          getRestaurantOutletInfosByUserAccountStatus:
          BooleanStatus.initial)) {
    restaurantService = GetIt.instance<RestaurantService>();
    this.getRestaurantOutletInfosByUserAccount(this.createRequestData());
  }

  late RestaurantService restaurantService;

  GetRestaurantOutletInfosByUserAccountRequest createRequestData(
      {String? status,
        int? first,
        int? count,
        String? columnName,
        String? columnOrder}) {
    final request = GetRestaurantOutletInfosByUserAccountRequest(
        status: status ?? state.status,
        first: first ?? state.first,
        count: count ?? state.count,
        columnName: columnName ?? state.columnName,
        columnOrder: columnOrder ?? state.columnOrder);
    return request;
  }

  Future<List<GetRestaurantOutletInfosByUserAccountResponse>>
  getRestaurantOutletInfosByUserAccount(
      GetRestaurantOutletInfosByUserAccountRequest request) async {
    return restaurantService
        .getRestaurantOutletInfosByUserAccount(request)
        .then((value) {
      emit(state.copyWith(
          getRestaurantOutletInfosByUserAccountResponse:
          value.reversed.toList(),
          getRestaurantOutletInfosByUserAccountStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          getRestaurantOutletInfosByUserAccountStatus: BooleanStatus.error));
      throw error;
    });
  }
}
