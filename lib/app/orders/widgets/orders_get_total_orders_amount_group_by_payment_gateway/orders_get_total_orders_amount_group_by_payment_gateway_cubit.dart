import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_total_orders_amount_group_by_payment_gateway/get_total_orders_amount_group_by_payment_gateway_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_total_orders_amount_group_by_payment_gateway/get_total_orders_amount_group_by_payment_gateway_response.dart';
import '../../services/orders_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'orders_get_total_orders_amount_group_by_payment_gateway_state.dart';

part 'orders_get_total_orders_amount_group_by_payment_gateway_cubit.freezed.dart';

class OrdersGetTotalOrdersAmountGroupByPaymentGatewayCubit
    extends BaseCubit<OrdersGetTotalOrdersAmountGroupByPaymentGatewayState> {
  late OrdersService ordersService;

  OrdersGetTotalOrdersAmountGroupByPaymentGatewayCubit({required super.context})
      : super(
            initialState: OrdersGetTotalOrdersAmountGroupByPaymentGatewayState
                .initial()) {
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
