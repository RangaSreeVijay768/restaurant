import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/models/menus/menu_item.dart';
import 'package:restaurant_pos/app/core/models/orders/order.dart';
import 'package:restaurant_pos/app/orders/repos/models/create_order_item/create_order_item_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/create_order_item/create_order_item_response.dart';
import 'package:restaurant_pos/app/orders/services/orders_service.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';

part 'orders_create_order_item_cubit.freezed.dart';
part 'orders_create_order_item_state.dart';

class OrdersCreateOrderItemCubit extends BaseCubit<OrdersCreateOrderItemState> {
  late OrdersService ordersService;

  OrdersCreateOrderItemCubit({required super.context})
      : super(
            initialState: const OrdersCreateOrderItemState.initial(
                createOrderItemStatus: BooleanStatus.initial)){
    createOrderItem(createRequestData());
  }


  CreateOrderItemRequest createRequestData(
      {String? orderId,
      String? menuItemId,
      int? itemQuantity,
      num? itemAmount}) {
    final request = CreateOrderItemRequest(
        orderId: orderId ?? state.order!.orderId!,
        menuItemId: menuItemId ?? state.menuItem!.menuItemId!,
        itemQuantity: itemQuantity ?? state.itemQuantity,
        itemAmount: itemAmount ?? state.itemAmount);

    return request;
  }

  Future<String> createOrderItem(CreateOrderItemRequest request) async {
    return ordersService.createOrderItem(request).then((value) {
      emit(state.copyWith(
          createOrderItemResponse: value,
          createOrderItemStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(createOrderItemStatus: BooleanStatus.error));
      throw error;
    });
  }
}
