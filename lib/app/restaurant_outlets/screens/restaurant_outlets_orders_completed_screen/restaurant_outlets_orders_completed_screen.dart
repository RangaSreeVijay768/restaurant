import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_get_order_infos_by_restaurant_outlet/orders_get_order_infos_by_restaurant_outlet.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'restaurant_outlets_orders_completed_screen_controller.dart';
import 'restaurant_outlets_orders_completed_screen_cubit.dart';

class RestaurantOutletsOrdersCompletedScreen extends BaseStatelessWidget<
    RestaurantOutletsOrdersCompletedScreenController,
    RestaurantOutletsOrdersCompletedScreenCubit,RestaurantOutletsOrdersCompletedScreenState> {
  String restaurantOutletId;

  RestaurantOutletsOrdersCompletedScreen(
      {required this.restaurantOutletId, Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsOrdersCompletedScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsOrdersCompletedScreenCubit,
          RestaurantOutletsOrdersCompletedScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return state.getRestaurantOutletInfoResponse != null
              ? OrdersGetOrderInfosByRestaurantOutletCompleted(
                  restaurantOutletInfo: state.getRestaurantOutletInfoResponse!,
                  status: 'COMPLETED')
              : Text('Loading orders');
        },
      ),
    );
  }

  @override
  RestaurantOutletsOrdersCompletedScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsOrdersCompletedScreenCubit cubit =
        RestaurantOutletsOrdersCompletedScreenCubit(
            restaurantOutletId: restaurantOutletId, context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
