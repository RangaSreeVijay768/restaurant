import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/orders/repos/models/update_order/update_order_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/update_order/update_order_response.dart';
import '../../services/orders_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'orders_update_order_state.dart';

part 'orders_update_order_cubit.freezed.dart';

class OrdersUpdateOrderCubit extends BaseCubit<OrdersUpdateOrderState> {
  late OrdersService ordersService;

  OrdersUpdateOrderCubit({required super.context})
      : super(initialState: OrdersUpdateOrderState.initial()) {
    ordersService = GetIt.instance<OrdersService>();
    updateOrder(createRequestData());
  }

  UpdateOrderRequest createRequestData(
      {int? amount, int? itemQuantity, String? orderId}) {
    final request = UpdateOrderRequest(
        amount: amount, itemQuantity: itemQuantity, orderId: orderId);
    return request;
  }

  Future<void> updateOrder(UpdateOrderRequest request) async {
    return ordersService.updateOrder(request).then((value) {
      emit(state.copyWith(updateOrderStatus: BooleanStatus.success));
      return value;
    }).catchError((error) {
      emit(state.copyWith(updateOrderStatus: BooleanStatus.error));
      throw error;
    });
  }
}
