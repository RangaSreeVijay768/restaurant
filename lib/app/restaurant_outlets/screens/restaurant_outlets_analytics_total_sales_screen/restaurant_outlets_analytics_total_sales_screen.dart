import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_get_orders_count_between/orders_get_orders_count_between.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_get_sum_of_amount_of_all_orders_between/orders_get_sum_of_amount_of_all_orders_between.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_get_total_orders_amount_group_by_payment_gateway/orders_get_total_orders_amount_group_by_payment_gateway.dart';
import 'package:restaurant_pos/app/themes/fonts.dart';
import '../../../themes/app_colors.dart';
import '../../widgets/restaurant_outlets_analytics_payment_type_bar_graph/restaurant_outlets_analytics_payment_type_bar_graph.dart';
import '../../widgets/restaurant_outlets_analytics_total_sales_bar_graph/restaurant_outlets_analytics_total_sales_bar_graph.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'restaurant_outlets_analytics_total_sales_screen_controller.dart';
import 'restaurant_outlets_analytics_total_sales_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsAnalyticsTotalSalesScreen
    extends BaseStatelessWidget<
        RestaurantOutletsAnalyticsTotalSalesScreenController,
        RestaurantOutletsAnalyticsTotalSalesScreenCubit,
        RestaurantOutletsAnalyticsTotalSalesScreenState> {

  RestaurantOutletsAnalyticsTotalSalesScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsAnalyticsTotalSalesScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          RestaurantOutletsAnalyticsTotalSalesScreenCubit,
          RestaurantOutletsAnalyticsTotalSalesScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return SingleChildScrollView(
            padding: edge_insets_16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownMenu(
                      inputDecorationTheme: const InputDecorationTheme(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.orange, width: 1))),
                      initialSelection: 1,
                      trailingIcon: Icon(CupertinoIcons.chevron_down),
                      selectedTrailingIcon: Icon(CupertinoIcons.chevron_up),
                      menuStyle: const MenuStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(AppColors.white),
                      ),
                      // controller: colorController,
                      dropdownMenuEntries: const [
                        DropdownMenuEntry(
                          value: 1,
                          label: 'Today',
                        ),
                        DropdownMenuEntry(value: 2, label: 'Week'),
                        DropdownMenuEntry(value: 3, label: 'Month'),
                        DropdownMenuEntry(value: 4, label: 'Year'),
                      ],
                      onSelected: (color) {},
                    ),
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: AppColors.lightOrange
                      ),
                        onPressed: (){},
                        icon: Icon(Icons.download_rounded)
                    )
                  ],
                ),
                SizedBox(height: 24,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          padding: edge_insets_y_16,
                          decoration: BoxDecoration(
                              border: borders.b_1px_grey4,
                              borderRadius: borderRadius.br_5),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: const Text(
                                  'Total Sales',
                                  style: TextStyle(
                                    fontSize: Fonts.fontSize14,
                                    fontWeight: Fonts.f400,
                                  ),
                                ),
                              ),
                              Container(
                                margin: edge_insets_t_12,
                                child: OrdersGetSumOfAmountOfAllOrdersBetween(),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                        child: Container(
                          padding: edge_insets_y_16,
                            decoration: BoxDecoration(
                                border: borders.b_1px_grey4,
                                borderRadius: borderRadius.br_5),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: const Text(
                                    'Total orders',
                                    style: TextStyle(
                                      fontSize: Fonts.fontSize14,
                                      fontWeight: Fonts.f400,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: edge_insets_t_12,
                                  child: OrdersGetOrdersCountBetween(),
                                )
                              ],
                            ))
                    )
                  ],
                ),
                SizedBox(height: 24,),
                Container(
                  padding: edge_insets_t_24,
                  decoration: BoxDecoration(
                    border: borders.b_1px_grey4,
                    borderRadius: borderRadius.br_5
                  ),
                  child: RestaurantOutletsAnalyticsTotalSalesBarGraph(),
                ),
                SizedBox(height: 24,),
                // Container(
                //   height: 100,
                //   child: OrdersGetTotalOrdersAmountGroupByPaymentGateway(),
                // ),
                Text("Mode of payment",style: TextStyle(
                  fontSize: Fonts.fontSize16,
                  fontWeight: Fonts.f600
                ),),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          padding: edge_insets_y_16,
                          decoration: BoxDecoration(
                              border: borders.b_1px_grey4,
                              borderRadius: borderRadius.br_5),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: const Text(
                                  'Total Sales',
                                  style: TextStyle(
                                    fontSize: Fonts.fontSize14,
                                    fontWeight: Fonts.f400,
                                  ),
                                ),
                              ),
                              Container(
                                margin: edge_insets_t_12,
                                child: OrdersGetSumOfAmountOfAllOrdersBetween(),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                        child: Container(
                            padding: edge_insets_y_16,
                            decoration: BoxDecoration(
                                border: borders.b_1px_grey4,
                                borderRadius: borderRadius.br_5),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: const Text(
                                    'Total orders',
                                    style: TextStyle(
                                      fontSize: Fonts.fontSize14,
                                      fontWeight: Fonts.f400,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: edge_insets_t_12,
                                  child: OrdersGetOrdersCountBetween(),
                                ),
                              ],
                            ))
                    )
                  ],
                ),
                SizedBox(height: 24,),
                Container(
                  padding: edge_insets_t_24,
                  decoration: BoxDecoration(
                      border: borders.b_1px_grey4,
                      borderRadius: borderRadius.br_5
                  ),
                  child: RestaurantOutletsAnalyticsPaymentTypeBarGraph(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsAnalyticsTotalSalesScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsAnalyticsTotalSalesScreenCubit cubit = RestaurantOutletsAnalyticsTotalSalesScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
