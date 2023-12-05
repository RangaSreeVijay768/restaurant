import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'orders_update_order_item_controller.dart';
import 'orders_update_order_item_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class OrdersUpdateOrderItem
    extends BaseStatelessWidget<OrdersUpdateOrderItemController,
        OrdersUpdateOrderItemCubit,
        OrdersUpdateOrderItemState> {

  OrdersUpdateOrderItem({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersUpdateOrderItemCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<OrdersUpdateOrderItemCubit,
          OrdersUpdateOrderItemState>(
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
  OrdersUpdateOrderItemCubit createCubitAndAssignToController(
      BuildContext context) {
    OrdersUpdateOrderItemCubit cubit = OrdersUpdateOrderItemCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
