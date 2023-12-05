import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/menu/widgets/menu_get_menu_item/menu_get_menu_item_cubit.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_order_items_group_by_menu_items_and_item_quantities/get_order_items_group_by_menu_items_and_item_quantities_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_order_items_group_by_menu_items_and_item_quantities/get_order_items_group_by_menu_items_and_item_quantities_response.dart';
import '../../../menu/repo/models/get_menu_item/get_menu_item_response.dart';
import '../../../orders/services/orders_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_analytics_item_wise_pie_chart_state.dart';

part 'restaurant_outlets_analytics_item_wise_pie_chart_cubit.freezed.dart';

class RestaurantOutletsAnalyticsItemWisePieChartCubit
    extends BaseCubit<RestaurantOutletsAnalyticsItemWisePieChartState> {
  late OrdersService ordersService;

  RestaurantOutletsAnalyticsItemWisePieChartCubit({required super.context})
      : super(
            initialState:
                RestaurantOutletsAnalyticsItemWisePieChartState.initial()) {
    ordersService = GetIt.instance<OrdersService>();
    getOrderItemsGroupByMenuItemsAndItemQuantities(createRequestData());
  }

  GetOrderItemsGroupByMenuItemsAndItemQuantitiesRequest createRequestData() {
    final request = GetOrderItemsGroupByMenuItemsAndItemQuantitiesRequest();
    return request;
  }

  Future<List<GetOrderItemsGroupByMenuItemsAndItemQuantitiesResponse>>
      getOrderItemsGroupByMenuItemsAndItemQuantities(
          GetOrderItemsGroupByMenuItemsAndItemQuantitiesRequest request) async {
    return ordersService
        .getOrderItemsGroupByMenuItemsAndItemQuantities(request)
        .then((value) {
      emit(state.copyWith(
          getOrderItemsGroupByMenuItemsAndItemQuantitiesResponse: value,
          getOrderItemsGroupByMenuItemsAndItemQuantitiesStatus:
              BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          getOrderItemsGroupByMenuItemsAndItemQuantitiesStatus:
              BooleanStatus.error));
      throw error;
    });
  }

}
