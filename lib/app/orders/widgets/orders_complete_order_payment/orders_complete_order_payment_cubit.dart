import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/models/orders/order.dart';
import 'package:restaurant_pos/app/orders/repos/models/complete_order_payment/complete_order_payment_request.dart';
import '../../repos/models/complete_order_payment/complete_order_payment_response.dart';
import '../../services/orders_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'orders_complete_order_payment_state.dart';

part 'orders_complete_order_payment_cubit.freezed.dart';

class OrdersCompleteOrderPaymentCubit
    extends BaseCubit<OrdersCompleteOrderPaymentState> {
  late OrdersService ordersService;
  OrdersCompleteOrderPaymentCubit({required super.context, required Order order})
      : super(initialState: OrdersCompleteOrderPaymentState.initial(order: order)){
    ordersService = GetIt.instance<OrdersService>();
  }


  CompleteOrderPaymentRequest createRequestData({String? orderPayment}) {
        final request = CompleteOrderPaymentRequest(
          orderPayment: orderPayment ?? state.orderPayment
        );
        return request;
      }

    Future<CompleteOrderPaymentResponse> completeOrderPayment(
          CompleteOrderPaymentRequest request) async {
        return ordersService.completeOrderPayment(request).then((value) {
          emit(state.copyWith(
              completeOrderPaymentResponse: value,
              completeOrderPaymentStatus: BooleanStatus.success));
          return Future.value(value);
        }).catchError((error) {
          emit(state.copyWith(completeOrderPaymentStatus: BooleanStatus.error));
          throw error;
        });
      }
}
