part of 'orders_update_order_item_cubit.dart';

@freezed
class OrdersUpdateOrderItemState with _$OrdersUpdateOrderItemState {
  const factory OrdersUpdateOrderItemState.initial({
    @Default(BooleanStatus.initial) BooleanStatus updateOrderItemStatus,
  }) = _Initial;
}
