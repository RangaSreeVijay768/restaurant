part of 'restaurant_outlets_analytics_item_wise_pie_chart_cubit.dart';

@freezed
class RestaurantOutletsAnalyticsItemWisePieChartState
    with _$RestaurantOutletsAnalyticsItemWisePieChartState {
  const factory RestaurantOutletsAnalyticsItemWisePieChartState.initial({
    List<GetOrderItemsGroupByMenuItemsAndItemQuantitiesResponse>? getOrderItemsGroupByMenuItemsAndItemQuantitiesResponse,
    @Default(BooleanStatus.initial) BooleanStatus getOrderItemsGroupByMenuItemsAndItemQuantitiesStatus,
    MenuGetMenuItemState? menuGetMenuItemState,
    MenuGetMenuItemCubit? menuGetMenuItemCubit
  }) = _Initial;
}
