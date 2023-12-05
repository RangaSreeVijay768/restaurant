part of 'orders_update_order_cubit.dart';

@freezed
class OrdersUpdateOrderState with _$OrdersUpdateOrderState {
  const factory OrdersUpdateOrderState.initial({
    @Default(BooleanStatus.initial) BooleanStatus updateOrderStatus,
  }) = _Initial;
}
