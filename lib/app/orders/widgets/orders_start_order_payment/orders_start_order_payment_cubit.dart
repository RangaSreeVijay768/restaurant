import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/orders/repos/models/start_order_payment/start_order_payment_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/start_order_payment/start_order_payment_response.dart';
import '../../../core/models/orders/order.dart';
import '../../services/orders_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'orders_start_order_payment_state.dart';

part 'orders_start_order_payment_cubit.freezed.dart';

class OrdersStartOrderPaymentCubit
    extends BaseCubit<OrdersStartOrderPaymentState> {
  late OrdersService ordersService;
  OrdersStartOrderPaymentCubit({required super.context})
      : super(initialState: OrdersStartOrderPaymentState.initial()){
    ordersService = GetIt.instance<OrdersService>();
  }


    StartOrderPaymentRequest createRequestData({String? order, dynamic paymentGateway}) {
        final request = StartOrderPaymentRequest(
          order: order ?? state.order,
          paymentGateway: paymentGateway ?? state.paymentGateway
        );
        return request;
      }

    Future<StartOrderPaymentResponse> startOrderPayment(
        StartOrderPaymentRequest request) async {
        return ordersService.startOrderPayment(request).then((value) {
          emit(state.copyWith(
              startOrderPaymentResponse: value,
              startOrderPaymentStatus: BooleanStatus.success));
          return Future.value(value);
        }).catchError((error) {
          emit(state.copyWith(startOrderPaymentStatus: BooleanStatus.error));
          throw error;
        });
      }
}
