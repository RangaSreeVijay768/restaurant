import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import '../../../core/models/orders/order.dart';
import 'orders_start_order_payment_controller.dart';
import 'orders_start_order_payment_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class OrdersStartOrderPayment
    extends BaseStatelessWidget<
        OrdersStartOrderPaymentController,
        OrdersStartOrderPaymentCubit,
        OrdersStartOrderPaymentState> {

  // String order;
  OrdersStartOrderPayment({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersStartOrderPaymentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          OrdersStartOrderPaymentCubit,
          OrdersStartOrderPaymentState>(
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
  OrdersStartOrderPaymentCubit createCubitAndAssignToController(
      BuildContext context) {
    OrdersStartOrderPaymentCubit cubit = OrdersStartOrderPaymentCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
