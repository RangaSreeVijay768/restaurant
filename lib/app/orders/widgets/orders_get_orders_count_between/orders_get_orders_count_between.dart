import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/core/utils/app_date_time_utils.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'orders_get_orders_count_between_controller.dart';
import 'orders_get_orders_count_between_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class OrdersGetOrdersCountBetween extends BaseStatelessWidget<
    OrdersGetOrdersCountBetweenController,
    OrdersGetOrdersCountBetweenCubit,
    OrdersGetOrdersCountBetweenState> {
  OrdersGetOrdersCountBetween(
      {Key? key, super.controller, super.onStateChanged})
      : super(key: key);
  DateTime startTime = AppDateTimeUtils.getStartTimeOfDateTime(AppDateTimeUtils.getCurrentTimeOfDay());
  DateTime endTime = AppDateTimeUtils.getCurrentTimeOfDay();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersGetOrdersCountBetweenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<OrdersGetOrdersCountBetweenCubit,
          OrdersGetOrdersCountBetweenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getOrdersCountBetweenResponse != null
              ? Text(state.getOrdersCountBetweenResponse.toString(),
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
  OrdersGetOrdersCountBetweenCubit createCubitAndAssignToController(
      BuildContext context) {
    OrdersGetOrdersCountBetweenCubit cubit = OrdersGetOrdersCountBetweenCubit(
        context: context, startTime: startTime, endTime: endTime);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
