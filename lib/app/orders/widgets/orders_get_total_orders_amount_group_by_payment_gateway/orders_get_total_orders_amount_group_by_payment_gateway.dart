import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'orders_get_total_orders_amount_group_by_payment_gateway_controller.dart';
import 'orders_get_total_orders_amount_group_by_payment_gateway_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class OrdersGetTotalOrdersAmountGroupByPaymentGateway
    extends BaseStatelessWidget<
        OrdersGetTotalOrdersAmountGroupByPaymentGatewayController,
        OrdersGetTotalOrdersAmountGroupByPaymentGatewayCubit,
        OrdersGetTotalOrdersAmountGroupByPaymentGatewayState> {

  OrdersGetTotalOrdersAmountGroupByPaymentGateway(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersGetTotalOrdersAmountGroupByPaymentGatewayCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          OrdersGetTotalOrdersAmountGroupByPaymentGatewayCubit,
          OrdersGetTotalOrdersAmountGroupByPaymentGatewayState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getTotalOrdersAmountGroupByPaymentGatewayResponse != null
          ? ListView.builder(
            itemCount: state.getTotalOrdersAmountGroupByPaymentGatewayResponse!.length,
              itemBuilder: (context, index){
              return Text("${state.getTotalOrdersAmountGroupByPaymentGatewayResponse![index].name} : ${state.getTotalOrdersAmountGroupByPaymentGatewayResponse![index].count}");
              }
          )
          : SizedBox();
        },
      ),
    );
  }

  @override
  OrdersGetTotalOrdersAmountGroupByPaymentGatewayCubit createCubitAndAssignToController(
      BuildContext context) {
    OrdersGetTotalOrdersAmountGroupByPaymentGatewayCubit cubit = OrdersGetTotalOrdersAmountGroupByPaymentGatewayCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
