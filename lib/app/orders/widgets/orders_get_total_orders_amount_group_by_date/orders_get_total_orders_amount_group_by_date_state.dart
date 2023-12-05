part of 'orders_get_total_orders_amount_group_by_date_cubit.dart';

@freezed
class OrdersGetTotalOrdersAmountGroupByDateState
    with _$OrdersGetTotalOrdersAmountGroupByDateState {
  const factory OrdersGetTotalOrdersAmountGroupByDateState.initial({
    List<GetTotalOrdersAmountGroupByDateResponse>? getTotalOrdersAmountGroupByDateResponse,
    @Default(BooleanStatus.initial) BooleanStatus getTotalOrdersAmountGroupByDateStatus,
    DateTime? startTime,
    DateTime? endTime
  }) = _Initial;
}
