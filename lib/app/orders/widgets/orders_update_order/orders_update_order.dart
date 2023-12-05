import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'orders_update_order_controller.dart';
import 'orders_update_order_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class OrdersUpdateOrder
    extends BaseStatelessWidget<
        OrdersUpdateOrderController,
        OrdersUpdateOrderCubit,
        OrdersUpdateOrderState> {

  OrdersUpdateOrder({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersUpdateOrderCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<OrdersUpdateOrderCubit, OrdersUpdateOrderState>(
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
  OrdersUpdateOrderCubit createCubitAndAssignToController(
      BuildContext context) {
    OrdersUpdateOrderCubit cubit = OrdersUpdateOrderCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
