part of 'orders_add_order_items_cubit.dart';

@freezed
class OrdersAddOrderItemsState with _$OrdersAddOrderItemsState {
  const factory OrdersAddOrderItemsState.initial({
    Order? order,
    String? ordersAddOrderItemsResponse,
        @Default(BooleanStatus.initial) BooleanStatus ordersAddOrderItemsStatus,
  }) = _Initial;
}
