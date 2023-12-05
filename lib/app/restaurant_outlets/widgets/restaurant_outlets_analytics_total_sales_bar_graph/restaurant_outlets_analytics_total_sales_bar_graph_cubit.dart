import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../orders/repos/models/get_total_orders_amount_group_by_date/get_total_orders_amount_group_by_date_request.dart';
import '../../../orders/repos/models/get_total_orders_amount_group_by_date/get_total_orders_amount_group_by_date_response.dart';
import '../../../orders/services/orders_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_analytics_total_sales_bar_graph_state.dart';

part 'restaurant_outlets_analytics_total_sales_bar_graph_cubit.freezed.dart';

class RestaurantOutletsAnalyticsTotalSalesBarGraphCubit
    extends BaseCubit<RestaurantOutletsAnalyticsTotalSalesBarGraphState> {
  late OrdersService ordersService;

  RestaurantOutletsAnalyticsTotalSalesBarGraphCubit(
      {required super.context, DateTime? startTime, DateTime? endTime})
      : super(
            initialState:
                RestaurantOutletsAnalyticsTotalSalesBarGraphState.initial(
                    startTime: startTime, endTime: endTime)) {
    ordersService = GetIt.instance<OrdersService>();
    getTotalOrdersAmountGroupByDate(createRequestData());
  }

  GetTotalOrdersAmountGroupByDateRequest createRequestData(
      {DateTime? startTime, DateTime? endTime}) {
    final request = GetTotalOrdersAmountGroupByDateRequest(
        startTime: startTime ?? state.startTime,
        endTime: endTime ?? state.endTime);
    return request;
  }

  Future<List<GetTotalOrdersAmountGroupByDateResponse>>
      getTotalOrdersAmountGroupByDate(
          GetTotalOrdersAmountGroupByDateRequest request) async {
    return ordersService.getTotalOrdersAmountGroupByDate(request).then((value) {
      emit(state.copyWith(
          getTotalOrdersAmountGroupByDateResponse: value,
          getTotalOrdersAmountGroupByDateStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          getTotalOrdersAmountGroupByDateStatus: BooleanStatus.error));
      throw error;
    });
  }
}
