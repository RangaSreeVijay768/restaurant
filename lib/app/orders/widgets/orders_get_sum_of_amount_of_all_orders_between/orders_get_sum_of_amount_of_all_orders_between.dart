import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_date_time_utils.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'orders_get_sum_of_amount_of_all_orders_between_controller.dart';
import 'orders_get_sum_of_amount_of_all_orders_between_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class OrdersGetSumOfAmountOfAllOrdersBetween
    extends BaseStatelessWidget<
        OrdersGetSumOfAmountOfAllOrdersBetweenController,
        OrdersGetSumOfAmountOfAllOrdersBetweenCubit,
        OrdersGetSumOfAmountOfAllOrdersBetweenState> {

  DateTime startTime = AppDateTimeUtils.getStartTimeOfDateTime(AppDateTimeUtils.getCurrentTimeOfDay());
  DateTime endTime = AppDateTimeUtils.getCurrentTimeOfDay();
  OrdersGetSumOfAmountOfAllOrdersBetween(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersGetSumOfAmountOfAllOrdersBetweenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          OrdersGetSumOfAmountOfAllOrdersBetweenCubit,
          OrdersGetSumOfAmountOfAllOrdersBetweenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getSumOfAmountOfAllOrdersBetweenResponse != null
          ? Text(state.getSumOfAmountOfAllOrdersBetweenResponse!.toStringAsFixed(0),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.textHeading,
              fontSize: Fonts.fontSize24,
              fontFamily: Fonts.fontNunito,
              fontWeight: Fonts.f700,
            ),
          )
          : SizedBox();
        },
      ),
    );
  }

  @override
  OrdersGetSumOfAmountOfAllOrdersBetweenCubit createCubitAndAssignToController(
      BuildContext context) {
    OrdersGetSumOfAmountOfAllOrdersBetweenCubit cubit = OrdersGetSumOfAmountOfAllOrdersBetweenCubit(
        context: context, startTime: startTime, endTime: endTime);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
