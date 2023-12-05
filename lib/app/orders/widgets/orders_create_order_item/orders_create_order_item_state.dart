part of 'orders_create_order_item_cubit.dart';

@freezed
class OrdersCreateOrderItemState with _$OrdersCreateOrderItemState {
  const factory OrdersCreateOrderItemState.initial({
    Order? order,
    MenuItem? menuItem,
    int? itemQuantity,
    num? itemAmount,
    String? createOrderItemResponse,
    required BooleanStatus createOrderItemStatus,
    }) = _Initial;
}
