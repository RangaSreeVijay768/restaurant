import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_all_restaurant_outlets/get_all_restaurant_outlets_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_all_restaurant_outlets/get_all_restaurant_outlets_response.dart';
import 'package:restaurant_pos/app/restaurant_outlets/services/restaurant_service.dart';

import '/app/core/blocs/base_cubit.dart';

part 'restaurant_outlets_get_all_restaurant_outlets_cubit.freezed.dart';

part 'restaurant_outlets_get_all_restaurant_outlets_state.dart';

class RestaurantOutletsGetAllRestaurantOutletsCubit
    extends BaseCubit<RestaurantOutletsGetAllRestaurantOutletsState> {
  late RestaurantService restaurantService;

  RestaurantOutletsGetAllRestaurantOutletsCubit({required super.context})
      : super(
            initialState: RestaurantOutletsGetAllRestaurantOutletsState.initial(
                getAllRestaurantOutletsStatus: BooleanStatus.initial)) {
    this.restaurantService = GetIt.instance<RestaurantService>();
    getAllRestaurantOutlets(createRequestData());
  }

  GetAllRestaurantOutletsRequest createRequestData(
      {int? first, int? count, String? columnName, String? columnOrder}) {
    final request = GetAllRestaurantOutletsRequest(
        first: first,
        count: count,
        columnName: columnName,
        columnOrder: columnOrder);
    return request;
  }

  Future<List<GetAllRestaurantOutletsResponse>> getAllRestaurantOutlets(
      GetAllRestaurantOutletsRequest request) async {
    return restaurantService.getAllRestaurantOutlets(request).then((value) {
      emit(state.copyWith(
          getAllRestaurantOutletsResponse: value,
          getAllRestaurantOutletsStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(getAllRestaurantOutletsStatus: BooleanStatus.error));
    });
  }
}
