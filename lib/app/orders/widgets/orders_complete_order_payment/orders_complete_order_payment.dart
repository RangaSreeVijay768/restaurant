import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import '../../../core/models/orders/order.dart';
import 'orders_complete_order_payment_controller.dart';
import 'orders_complete_order_payment_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class OrdersCompleteOrderPayment
    extends BaseStatelessWidget<
        OrdersCompleteOrderPaymentController,
        OrdersCompleteOrderPaymentCubit,
        OrdersCompleteOrderPaymentState> {
  Order order;

  OrdersCompleteOrderPayment({Key? key, super.controller, super.onStateChanged, required this.order})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersCompleteOrderPaymentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          OrdersCompleteOrderPaymentCubit,
          OrdersCompleteOrderPaymentState>(
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
  OrdersCompleteOrderPaymentCubit createCubitAndAssignToController(
      BuildContext context) {
    OrdersCompleteOrderPaymentCubit cubit = OrdersCompleteOrderPaymentCubit(
        context: context, order: order);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
