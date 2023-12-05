import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../orders/repos/models/get_total_orders_amount_group_by_payment_gateway/get_total_orders_amount_group_by_payment_gateway_request.dart';
import '../../../orders/repos/models/get_total_orders_amount_group_by_payment_gateway/get_total_orders_amount_group_by_payment_gateway_response.dart';
import '../../../orders/services/orders_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_analytics_payment_type_bar_graph_state.dart';

part 'restaurant_outlets_analytics_payment_type_bar_graph_cubit.freezed.dart';

class RestaurantOutletsAnalyticsPaymentTypeBarGraphCubit
    extends BaseCubit<RestaurantOutletsAnalyticsPaymentTypeBarGraphState> {
  late OrdersService ordersService;

  RestaurantOutletsAnalyticsPaymentTypeBarGraphCubit({required super.context})
      : super(initialState: RestaurantOutletsAnalyticsPaymentTypeBarGraphState
      .initial()){
    ordersService = GetIt.instance<OrdersService>();
    getTotalOrdersAmountGroupByPaymentGateway(createRequestData());
  }

  GetTotalOrdersAmountGroupByPaymentGatewayRequest createRequestData() {
    final request = GetTotalOrdersAmountGroupByPaymentGatewayRequest();
    return request;
  }

  Future<List<GetTotalOrdersAmountGroupByPaymentGatewayResponse>>
  getTotalOrdersAmountGroupByPaymentGateway(
      GetTotalOrdersAmountGroupByPaymentGatewayRequest request) async {
    return ordersService
        .getTotalOrdersAmountGroupByPaymentGateway(request)
        .then((value) {
      emit(state.copyWith(
          getTotalOrdersAmountGroupByPaymentGatewayResponse: value,
          getTotalOrdersAmountGroupByPaymentGatewayStatus:
          BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          getTotalOrdersAmountGroupByPaymentGatewayStatus:
          BooleanStatus.error));
      throw error;
    });
  }

}
