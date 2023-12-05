import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'orders_get_total_orders_amount_group_by_date_controller.dart';
import 'orders_get_total_orders_amount_group_by_date_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class OrdersGetTotalOrdersAmountGroupByDate
    extends BaseStatelessWidget<
        OrdersGetTotalOrdersAmountGroupByDateController,
        OrdersGetTotalOrdersAmountGroupByDateCubit,
        OrdersGetTotalOrdersAmountGroupByDateState> {

  OrdersGetTotalOrdersAmountGroupByDate(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersGetTotalOrdersAmountGroupByDateCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          OrdersGetTotalOrdersAmountGroupByDateCubit,
          OrdersGetTotalOrdersAmountGroupByDateState>(
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
  OrdersGetTotalOrdersAmountGroupByDateCubit createCubitAndAssignToController(
      BuildContext context) {
    OrdersGetTotalOrdersAmountGroupByDateCubit cubit = OrdersGetTotalOrdersAmountGroupByDateCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
