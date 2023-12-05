part of 'orders_complete_order_payment_cubit.dart';

@freezed
class OrdersCompleteOrderPaymentState with _$OrdersCompleteOrderPaymentState {
  const factory OrdersCompleteOrderPaymentState.initial({
    String? orderPayment,
    Order? order,
    CompleteOrderPaymentResponse? completeOrderPaymentResponse,
    @Default(BooleanStatus.initial) BooleanStatus completeOrderPaymentStatus,
  }) = _Initial;
}
