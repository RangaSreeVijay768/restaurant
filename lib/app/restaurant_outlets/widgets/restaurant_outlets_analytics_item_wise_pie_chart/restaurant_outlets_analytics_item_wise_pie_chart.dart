import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/menu/widgets/menu_get_menu_item/menu_get_menu_item.dart';
import '../../../themes/app_colors.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'restaurant_outlets_analytics_item_wise_pie_chart_controller.dart';
import 'restaurant_outlets_analytics_item_wise_pie_chart_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsAnalyticsItemWisePieChart extends BaseStatelessWidget<
    RestaurantOutletsAnalyticsItemWisePieChartController,
    RestaurantOutletsAnalyticsItemWisePieChartCubit,
    RestaurantOutletsAnalyticsItemWisePieChartState> {
  RestaurantOutletsAnalyticsItemWisePieChart(
      {Key? key, super.controller, super.onStateChanged})
      : super(key: key);



  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsAnalyticsItemWisePieChartCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsAnalyticsItemWisePieChartCubit,
          RestaurantOutletsAnalyticsItemWisePieChartState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getOrderItemsGroupByMenuItemsAndItemQuantitiesResponse != null
          ? Column(
            children: [
              SizedBox(
                height: 200,
                child: Expanded(
                    child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      // shrinkWrap: true,
                      itemCount: state.getOrderItemsGroupByMenuItemsAndItemQuantitiesResponse!.length,
                      itemBuilder: (context, index){
                        return MenuGetMenuItem(menuItemId: state.getOrderItemsGroupByMenuItemsAndItemQuantitiesResponse![index].name!,);
                      },
                    )
                ),
              ),
              // MenuGetMenuItem(menuItemId: ,),
              Container(
                padding: edge_insets_t_48,
                decoration: BoxDecoration(
                    border: borders.b_1px_grey4, borderRadius: borderRadius.br_5),
                child: PieChart(
                  dataMap: Map.fromEntries(
                      (state.getOrderItemsGroupByMenuItemsAndItemQuantitiesResponse ??
                          [])
                          .map((e) => MapEntry(e.name!, e.count!))),
                  animationDuration: const Duration(milliseconds: 800),
                  chartLegendSpacing: 70,
                  chartRadius: 140,
                  colorList: const [
                    AppColors.brown,
                    AppColors.grey3,
                    AppColors.greyWhite,
                    AppColors.bgPrimary,
                    AppColors.bgPrimary2,
                    AppColors.primary,
                    AppColors.waterPrimary,
                    AppColors.lightOrange,
                  ],
                  initialAngleInDegree: 0,
                  chartType: ChartType.ring,
                  ringStrokeWidth: 45,
                  // centerText: "HYBRID",
                  legendOptions: const LegendOptions(
                    showLegendsInRow: true,
                    legendPosition: LegendPosition.bottom,
                    showLegends: true,
                    legendShape: BoxShape.rectangle,
                    legendLabels: {},
                    legendTextStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValueBackground: false,
                    showChartValues: false,
                    showChartValuesInPercentage: false,
                    showChartValuesOutside: false,
                    decimalPlaces: 1,
                  ),
                  // gradientList: ---To add gradient colors---
                  // emptyColorGradient: ---Empty Color gradient---
                ),
              )
            ],
          )
          : SizedBox();
        },
      ),
    );
  }

  @override
  RestaurantOutletsAnalyticsItemWisePieChartCubit
      createCubitAndAssignToController(BuildContext context) {
    RestaurantOutletsAnalyticsItemWisePieChartCubit cubit =
        RestaurantOutletsAnalyticsItemWisePieChartCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
