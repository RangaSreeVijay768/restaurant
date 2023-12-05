import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/core/models/orders/order.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'orders_add_order_items_controller.dart';
import 'orders_add_order_items_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class OrdersAddOrderItems extends BaseStatelessWidget<
    OrdersAddOrderItemsController,
    OrdersAddOrderItemsCubit,
    OrdersAddOrderItemsState> {
  Order order;

   OrdersAddOrderItems(
      {required this.order, Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersAddOrderItemsCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<OrdersAddOrderItemsCubit, OrdersAddOrderItemsState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container();
        },
      ),
    );
  }

  @override
  OrdersAddOrderItemsCubit createCubitAndAssignToController(
      BuildContext context) {
    OrdersAddOrderItemsCubit cubit =
        OrdersAddOrderItemsCubit(order: order, context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
