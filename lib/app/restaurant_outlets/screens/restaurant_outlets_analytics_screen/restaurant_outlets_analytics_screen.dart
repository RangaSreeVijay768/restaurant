import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/restaurant_outlets/screens/restaurant_outlets_analytics_item_wise_screen/restaurant_outlets_analytics_item_wise_screen.dart';
import 'package:restaurant_pos/app/restaurant_outlets/screens/restaurant_outlets_analytics_total_sales_screen/restaurant_outlets_analytics_total_sales_screen.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'restaurant_outlets_analytics_screen_controller.dart';
import 'restaurant_outlets_analytics_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsAnalyticsScreen
    extends BaseStatelessWidget<
        RestaurantOutletsAnalyticsScreenController,
        RestaurantOutletsAnalyticsScreenCubit,
        RestaurantOutletsAnalyticsScreenState> {

  RestaurantOutletsAnalyticsScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsAnalyticsScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          RestaurantOutletsAnalyticsScreenCubit,
          RestaurantOutletsAnalyticsScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            color: Colors.green,
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(53),
                  child: AppBar(
                    automaticallyImplyLeading: false,
                    bottom: TabBar(
                      indicatorPadding: edge_insets_y_8,
                      indicator: BoxDecoration(
                          border: borders.b_1px_orange,
                          color: AppColors.orange,
                          borderRadius: borderRadius.br_5
                      ),
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 3,
                      labelColor: AppColors.white,
                      tabAlignment: TabAlignment.center,
                      padding: edge_insets_0,
                      tabs: <Widget>[
                        Container(
                            width: MediaQuery.of(context).size.width / 2.8,
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text(
                              "Total Sales",
                              style: TextStyle(
                                  fontWeight: Fonts.f600,
                                  fontSize: Fonts.fontSize16),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width / 2.8,
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text(
                              "Item wise",
                              style: TextStyle(
                                  fontWeight: Fonts.f600,
                                  fontSize: Fonts.fontSize16),
                            )),
                      ],
                    ),
                  ),
                ),
                body: Container(
                  child: TabBarView(
                    children: [
                      RestaurantOutletsAnalyticsTotalSalesScreen(),
                      RestaurantOutletsAnalyticsItemWiseScreen(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsAnalyticsScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsAnalyticsScreenCubit cubit = RestaurantOutletsAnalyticsScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
