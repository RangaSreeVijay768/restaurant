part of 'orders_create_order_cubit.dart';

@freezed
class OrdersCreateOrderState with _$OrdersCreateOrderState {
  const factory OrdersCreateOrderState.initial(
      {required RestaurantOutlet restaurantOutlet,
      String? orderId,
      required BooleanStatus createOrderStatus}) = _Initial;
}
