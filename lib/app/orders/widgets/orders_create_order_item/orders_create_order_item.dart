import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/core/models/orders/order.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'orders_create_order_item_controller.dart';
import 'orders_create_order_item_cubit.dart';

class OrdersCreateOrderItem extends BaseStatelessWidget<
    OrdersCreateOrderItemController, OrdersCreateOrderItemCubit,OrdersCreateOrderItemState> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersCreateOrderItemCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child:
          BlocConsumer<OrdersCreateOrderItemCubit, OrdersCreateOrderItemState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Container();
        },
      ),
    );
  }

  OrdersCreateOrderItem({Order? order, Key? key, super.controller})
      : super(key: key);

  @override
  OrdersCreateOrderItemCubit createCubitAndAssignToController(
      BuildContext context) {
    OrdersCreateOrderItemCubit cubit =
        OrdersCreateOrderItemCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}

class OrdersCreateOrderItemEmptyWidget extends OrdersCreateOrderItem{

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersCreateOrderItemCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child:
      BlocConsumer<OrdersCreateOrderItemCubit, OrdersCreateOrderItemState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Container();
        },
      ),
    );
  }

}
