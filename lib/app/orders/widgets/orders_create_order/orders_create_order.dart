import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet.dart';
import 'package:restaurant_pos/app/themes/app_colors.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'orders_create_order_controller.dart';
import 'orders_create_order_cubit.dart';

class OrdersCreateOrder extends BaseStatelessWidget<OrdersCreateOrderController,
    OrdersCreateOrderCubit,OrdersCreateOrderState> {
  RestaurantOutlet restaurantOutlet;

  Function(String)? onOrderCreated;

  OrdersCreateOrder(
      {required this.restaurantOutlet,
      this.onOrderCreated,
      Key? key,
      super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersCreateOrderCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<OrdersCreateOrderCubit, OrdersCreateOrderState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            // alignment: Alignment.centerRight,
            margin: edge_insets_b_50,
            padding: edge_insets_x_24,
            child: IconButton(
              padding: edge_insets_16,
              style: IconButton.styleFrom(backgroundColor: AppColors.orange, shadowColor: AppColors.bgLightBlue),
              color: AppColors.white,
              icon: Icon(
                Icons.add,
                size: 28,
              ),
              onPressed: state.createOrderStatus != BooleanStatus.pending
                  ? () async {
                      String orderId = await getCubit(context)
                          .createOrder(getCubit(context).createRequestData());
                      getCubit(context).logEvent(name: 'orders_create_order');
                      if (onOrderCreated != null) {
                        onOrderCreated!(orderId);
                      }
                    }
                  : null,
            ),
          );
        },
      ),
    );
  }

  @override
  OrdersCreateOrderCubit createCubitAndAssignToController(
      BuildContext context) {
    OrdersCreateOrderCubit cubit = OrdersCreateOrderCubit(
        restaurantOutlet: restaurantOutlet, context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
