import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/models/orders/order.dart';
import 'package:restaurant_pos/app/orders/repos/models/orders_add_order_items/orders_add_order_items_request.dart';
import 'package:restaurant_pos/app/orders/services/orders_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'orders_add_order_items_state.dart';

part 'orders_add_order_items_cubit.freezed.dart';

class OrdersAddOrderItemsCubit extends BaseCubit<OrdersAddOrderItemsState> {
  OrdersAddOrderItemsCubit({required super.context, required Order order})
      : super(initialState: OrdersAddOrderItemsState.initial(order: order)) {
    ordersService = GetIt.instance<OrdersService>();
  }

  late OrdersService ordersService;

  OrdersAddOrderItemsRequest createRequestData(
      {String? orderId, required List<AddOrderItemsRequestItems> requestItems}) {
    final request = OrdersAddOrderItemsRequest(
        orderId: orderId ?? state.order!.orderId!,
        addOrderItemsRequestItems: requestItems);
    return request;
  }

  Future<String> addOrderItems(OrdersAddOrderItemsRequest request) async {
    return ordersService.addOrderItems(request).then((value) {
      emit(state.copyWith(
          ordersAddOrderItemsResponse: value,
          ordersAddOrderItemsStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(ordersAddOrderItemsStatus: BooleanStatus.error));
      throw error;
    });
  }
}
