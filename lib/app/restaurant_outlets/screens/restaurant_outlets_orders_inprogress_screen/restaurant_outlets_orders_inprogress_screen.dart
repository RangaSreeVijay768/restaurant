import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_create_order/orders_create_order.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_get_order_infos_by_restaurant_outlet/orders_get_order_infos_by_restaurant_outlet.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_get_order_infos_by_restaurant_outlet/orders_get_order_infos_by_restaurant_outlet_controller.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'restaurant_outlets_orders_inprogress_screen_controller.dart';
import 'restaurant_outlets_orders_inprogress_screen_cubit.dart';

class RestaurantOutletsOrdersInprogressScreen extends BaseStatelessWidget<
    RestaurantOutletsOrdersInprogressScreenController,
    RestaurantOutletsOrdersInprogressScreenCubit,
    RestaurantOutletsOrdersInprogressScreenState> {
  String restaurantOutletId;

  OrdersGetOrderInfosByRestaurantOutletController
      orderInfosByRestaurantOutletController =
      OrdersGetOrderInfosByRestaurantOutletController();

  RestaurantOutletsOrdersInprogressScreen(
      {required this.restaurantOutletId, Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsOrdersInprogressScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsOrdersInprogressScreenCubit,
          RestaurantOutletsOrdersInprogressScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return state.getRestaurantOutletInfoResponse != null
              ? Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    OrdersGetOrderInfosByRestaurantOutlet(
                      restaurantOutletInfo: state
                          .getRestaurantOutletInfoResponse!,
                      status: 'CREATED',
                      controller: orderInfosByRestaurantOutletController,
                    ),
                    OrdersCreateOrder(
                      restaurantOutlet: state
                          .getRestaurantOutletInfoResponse!.restaurantOutlet!,
                      onOrderCreated: (orderId) {
                        orderInfosByRestaurantOutletController
                            .getChildCubit()
                            .getOrderInfosByRestaurantOutlet(
                                orderInfosByRestaurantOutletController
                                    .getChildCubit()
                                    .createRequestData());
                      },
                    )
                  ],
                )
              : Text('Loading details');
        },
      ),
    );
  }

  @override
  RestaurantOutletsOrdersInprogressScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsOrdersInprogressScreenCubit cubit =
        RestaurantOutletsOrdersInprogressScreenCubit(
            restaurantOutletId: restaurantOutletId, context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
