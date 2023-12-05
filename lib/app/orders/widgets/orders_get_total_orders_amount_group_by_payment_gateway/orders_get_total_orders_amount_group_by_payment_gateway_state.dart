part of 'orders_get_total_orders_amount_group_by_payment_gateway_cubit.dart';

@freezed
class OrdersGetTotalOrdersAmountGroupByPaymentGatewayState
    with _$OrdersGetTotalOrdersAmountGroupByPaymentGatewayState {
  const factory OrdersGetTotalOrdersAmountGroupByPaymentGatewayState.initial({
    List<GetTotalOrdersAmountGroupByPaymentGatewayResponse>? getTotalOrdersAmountGroupByPaymentGatewayResponse,
    @Default(BooleanStatus.initial) BooleanStatus getTotalOrdersAmountGroupByPaymentGatewayStatus,
  }) = _Initial;
}
