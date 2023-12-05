part of 'orders_get_orders_count_between_cubit.dart';

@freezed
class OrdersGetOrdersCountBetweenState with _$OrdersGetOrdersCountBetweenState {
  const factory OrdersGetOrdersCountBetweenState.initial({
    int? getOrdersCountBetweenResponse,
    @Default(BooleanStatus.initial) BooleanStatus getOrdersCountBetweenStatus,
    DateTime? startTime,
    DateTime? endTime
  }) = _Initial;
}
