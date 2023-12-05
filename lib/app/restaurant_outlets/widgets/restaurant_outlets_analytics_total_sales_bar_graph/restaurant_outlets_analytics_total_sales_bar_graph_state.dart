part of 'restaurant_outlets_analytics_total_sales_bar_graph_cubit.dart';

@freezed
class RestaurantOutletsAnalyticsTotalSalesBarGraphState
    with _$RestaurantOutletsAnalyticsTotalSalesBarGraphState {
  const factory RestaurantOutletsAnalyticsTotalSalesBarGraphState.initial({
    List<GetTotalOrdersAmountGroupByDateResponse>? getTotalOrdersAmountGroupByDateResponse,
    @Default(BooleanStatus.initial) BooleanStatus getTotalOrdersAmountGroupByDateStatus,
    DateTime? startTime,
    DateTime? endTime
  }) = _Initial;
}
