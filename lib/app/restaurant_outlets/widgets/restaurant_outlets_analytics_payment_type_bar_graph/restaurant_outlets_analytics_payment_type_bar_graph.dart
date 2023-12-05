import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'restaurant_outlets_analytics_payment_type_bar_graph_controller.dart';
import 'restaurant_outlets_analytics_payment_type_bar_graph_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsAnalyticsPaymentTypeBarGraph
    extends BaseStatelessWidget<
        RestaurantOutletsAnalyticsPaymentTypeBarGraphController,
        RestaurantOutletsAnalyticsPaymentTypeBarGraphCubit,
        RestaurantOutletsAnalyticsPaymentTypeBarGraphState> {

  RestaurantOutletsAnalyticsPaymentTypeBarGraph(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsAnalyticsPaymentTypeBarGraphCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          RestaurantOutletsAnalyticsPaymentTypeBarGraphCubit,
          RestaurantOutletsAnalyticsPaymentTypeBarGraphState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getTotalOrdersAmountGroupByPaymentGatewayResponse != null
          ? Container(
            padding: edge_insets_r_24,
            height: MediaQuery.sizeOf(context).height/4,
            child: BarChart(BarChartData(
              maxY: 1000,
              minY: 0,
              gridData: const FlGridData(show: false),
              borderData: FlBorderData(
                border: borders.bbl_1px_normal,
              ),
              titlesData: FlTitlesData(
                rightTitles:
                AxisTitles(sideTitles: SideTitles(showTitles: false)),
                topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                bottomTitles: AxisTitles(sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, wertyu) {
                      return SideTitleWidget(
                          child: Text(state.getTotalOrdersAmountGroupByPaymentGatewayResponse![0].name.toString()),
                          axisSide: AxisSide.top
                      );
                    }))
              ),
              barGroups: state.getTotalOrdersAmountGroupByPaymentGatewayResponse!
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
  RestaurantOutletsAnalyticsPaymentTypeBarGraphCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsAnalyticsPaymentTypeBarGraphCubit cubit = RestaurantOutletsAnalyticsPaymentTypeBarGraphCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
