import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';
import '../../repos/models/update_order_item/update_order_item_request.dart';
import '../../services/orders_service.dart';

part 'orders_update_order_item_cubit.freezed.dart';
part 'orders_update_order_item_state.dart';

class OrdersUpdateOrderItemCubit extends BaseCubit<OrdersUpdateOrderItemState> {
  late OrdersService ordersService;

  OrdersUpdateOrderItemCubit({required super.context})
      : super(initialState: OrdersUpdateOrderItemState.initial()) {
    ordersService = GetIt.instance<OrdersService>();
  }

  UpdateOrderItemRequest createRequestData({
    String? orderItemId,
    num? itemAmount,
    String? itemDeliveryStatus,
    DateTime? itemDeliveryTime,
    int? itemQuantity,
  }) {
    final request = UpdateOrderItemRequest(
        orderItemId: orderItemId,
        itemAmount: itemAmount,
        itemDeliveryStatus: itemDeliveryStatus,
        itemDeliveryTime: itemDeliveryTime,
        itemQuantity: itemQuantity);
    return request;
  }

  Future<void> updateOrderItem(UpdateOrderItemRequest request) async {
    return ordersService.updateOrderItem(request).then((value) {
      emit(state.copyWith(updateOrderItemStatus: BooleanStatus.success));
      return value;
    }).catchError((error) {
      emit(state.copyWith(updateOrderItemStatus: BooleanStatus.error));
      throw error;
    });
  }
}
