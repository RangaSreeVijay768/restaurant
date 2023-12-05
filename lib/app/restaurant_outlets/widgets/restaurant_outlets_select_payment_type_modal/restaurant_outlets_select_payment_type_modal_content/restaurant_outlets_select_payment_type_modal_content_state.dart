part of 'restaurant_outlets_select_payment_type_modal_content_cubit.dart';

@freezed
class RestaurantOutletsSelectPaymentTypeModalContentState
    with _$RestaurantOutletsSelectPaymentTypeModalContentState {
  const factory RestaurantOutletsSelectPaymentTypeModalContentState.initial({
    required String selectedPaymentType,
    Order? order,
    OrdersStartOrderPaymentState? ordersStartOrderPaymentState,
    OrdersCompleteOrderPaymentState? ordersCompleteOrderPaymentState
  }) = _Initial;
}
