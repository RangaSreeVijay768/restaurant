import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_date_time_utils.dart';
import '../../../themes/app_colors.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'restaurant_outlets_analytics_total_sales_bar_graph_controller.dart';
import 'restaurant_outlets_analytics_total_sales_bar_graph_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsAnalyticsTotalSalesBarGraph
    extends BaseStatelessWidget<
        RestaurantOutletsAnalyticsTotalSalesBarGraphController,
        RestaurantOutletsAnalyticsTotalSalesBarGraphCubit,
        RestaurantOutletsAnalyticsTotalSalesBarGraphState> {

  DateTime startTime = AppDateTimeUtils.getStartTimeOfDateTime1(AppDateTimeUtils.getCurrentTimeOfDay());
  DateTime endTime = AppDateTimeUtils.getStartTimeOfDateTime(AppDateTimeUtils.getCurrentTimeOfDay());

  RestaurantOutletsAnalyticsTotalSalesBarGraph(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsAnalyticsTotalSalesBarGraphCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          RestaurantOutletsAnalyticsTotalSalesBarGraphCubit,
          RestaurantOutletsAnalyticsTotalSalesBarGraphState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getTotalOrdersAmountGroupByDateResponse != null
          ? Container(
            padding: edge_insets_r_24,
            decoration: BoxDecoration(
              // border: borders.b_1px_grey4
            ),
            height: MediaQuery.sizeOf(context).height/3.5,
            child: BarChart(BarChartData(
              maxY: 1000,
              minY: 0,
              gridData: const FlGridData(show: false),
              borderData: FlBorderData(
                border: borders.bbl_1px_normal,
              ),
              titlesData: const FlTitlesData(
                rightTitles:
                AxisTitles(sideTitles: SideTitles(showTitles: false)),
                topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                // bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,getTitlesWidget: getBottomTitles))
              ),
              barGroups: state.getTotalOrdersAmountGroupByDateResponse!
                  .map((data) => BarChartGroupData(x: data.count!.toInt(), barRods: [
                BarChartRodData(
                    toY: data.count! / 1000,
                    color: AppColors.bgPrimary,
                    width: 14,
                    borderRadius: borderRadius.br_0)
              ]))
                  .toList(),
            )),
          )
          : SizedBox();
        },
      ),
    );
  }

  @override
  RestaurantOutletsAnalyticsTotalSalesBarGraphCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsAnalyticsTotalSalesBarGraphCubit cubit = RestaurantOutletsAnalyticsTotalSalesBarGraphCubit(
        context: context, startTime: startTime, endTime: endTime);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
