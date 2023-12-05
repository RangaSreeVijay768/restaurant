part of 'orders_start_order_payment_cubit.dart';

@freezed
class OrdersStartOrderPaymentState with _$OrdersStartOrderPaymentState {
  const factory OrdersStartOrderPaymentState.initial({
    String? order, dynamic paymentGateway,
    StartOrderPaymentResponse? startOrderPaymentResponse,
    @Default(BooleanStatus.initial) BooleanStatus startOrderPaymentStatus,
  }) = _Initial;
}
