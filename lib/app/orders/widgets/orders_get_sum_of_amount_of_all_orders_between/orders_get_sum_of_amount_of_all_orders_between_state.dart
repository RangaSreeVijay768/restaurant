part of 'orders_get_sum_of_amount_of_all_orders_between_cubit.dart';

@freezed
class OrdersGetSumOfAmountOfAllOrdersBetweenState
    with _$OrdersGetSumOfAmountOfAllOrdersBetweenState {
  const factory OrdersGetSumOfAmountOfAllOrdersBetweenState.initial({
    DateTime? startTime,
    DateTime? endTime,
    double? getSumOfAmountOfAllOrdersBetweenResponse,
    @Default(BooleanStatus.initial) BooleanStatus getSumOfAmountOfAllOrdersBetweenStatus,
  }) = _Initial;
}
