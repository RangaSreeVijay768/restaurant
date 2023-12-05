part of 'orders_get_order_infos_by_restaurant_outlet_cubit.dart';

@freezed
class OrdersGetOrderInfosByRestaurantOutletState
    with _$OrdersGetOrderInfosByRestaurantOutletState {
  const factory OrdersGetOrderInfosByRestaurantOutletState.initial(
          {String? status,
          required RestaurantOutlet restaurantOutlet,
          int? first,
          int? count,
          @Default("createdTime") String? columnName,
          @Default("DESC") String? columnOrder,
          @Default(BooleanStatus.initial) BooleanStatus timerStatus,
          BluetoothState? bluetoothState,
          RestaurantOutletsSelectPaymentTypeModalState?
              restaurantOutletsSelectPaymentTypeModalState,
          OrdersUpdateOrderState? ordersUpdateOrderState,
          OrdersUpdateOrderItemState? ordersUpdateOrderItemState,
          CoreCounterTimerState? coreCounterTimerState,
          List<GetOrderInfosByRestaurantOutletResponse>?
              getOrderInfosByRestaurantOutletResponse,
          required BooleanStatus getOrderInfosByRestaurantOutletStatus,
          BluetoothPrintPrintReceiptState? bluetoothPrintPrintReceiptState}) =
      _Initial;
}
