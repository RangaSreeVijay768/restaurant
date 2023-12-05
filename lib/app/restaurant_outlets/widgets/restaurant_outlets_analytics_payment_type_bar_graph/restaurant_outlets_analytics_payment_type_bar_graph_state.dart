part of 'restaurant_outlets_analytics_payment_type_bar_graph_cubit.dart';

@freezed
class RestaurantOutletsAnalyticsPaymentTypeBarGraphState
    with _$RestaurantOutletsAnalyticsPaymentTypeBarGraphState {
  const factory RestaurantOutletsAnalyticsPaymentTypeBarGraphState.initial({
    List<GetTotalOrdersAmountGroupByPaymentGatewayResponse>? getTotalOrdersAmountGroupByPaymentGatewayResponse,
    @Default(BooleanStatus.initial) BooleanStatus getTotalOrdersAmountGroupByPaymentGatewayStatus,
  }) = _Initial;
}
