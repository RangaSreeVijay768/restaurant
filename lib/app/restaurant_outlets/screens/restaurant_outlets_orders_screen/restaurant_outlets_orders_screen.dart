import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/restaurant_outlets/screens/restaurant_outlets_orders_completed_screen/restaurant_outlets_orders_completed_screen.dart';
import 'package:restaurant_pos/app/restaurant_outlets/screens/restaurant_outlets_orders_inprogress_screen/restaurant_outlets_orders_inprogress_screen.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/borders.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import 'restaurant_outlets_orders_screen_controller.dart';
import 'restaurant_outlets_orders_screen_cubit.dart';

class RestaurantOutletsOrdersScreen extends BaseStatelessWidget<
    RestaurantOutletsOrdersScreenController,
    RestaurantOutletsOrdersScreenCubit,
    RestaurantOutletsOrdersScreenState> {
  String restaurantOutletId;

  RestaurantOutletsOrdersScreen(
      {required this.restaurantOutletId, Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsOrdersScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsOrdersScreenCubit,
          RestaurantOutletsOrdersScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(53),
                child: AppBar(
                  automaticallyImplyLeading: false,
                  bottom: TabBar(

                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 3,
                    indicatorColor: AppColors.orange,
                    labelColor: AppColors.orange,
                    tabAlignment: TabAlignment.center,
                    padding: edge_insets_0,
                    tabs: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width / 2.8,
                          height: 50,
                          alignment: Alignment.center,
                          child: const Text(
                            "In progress",
                            style: TextStyle(
                                fontWeight: Fonts.f600,
                                fontSize: Fonts.fontSize16),
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 2.8,
                          height: 50,
                          alignment: Alignment.center,
                          child: const Text(
                            "Completed",
                            style: TextStyle(
                                fontWeight: Fonts.f600,
                                fontSize: Fonts.fontSize16),
                          )),
                    ],
                  ),
                ),
              ),
              body: Container(
                decoration: BoxDecoration(
                  border: borders.bt_1px_grey4,
                ),
                child: TabBarView(
                  children: [
                    RestaurantOutletsOrdersInprogressScreen(
                      restaurantOutletId: restaurantOutletId,
                    ),
                    RestaurantOutletsOrdersCompletedScreen(
                      restaurantOutletId: restaurantOutletId,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsOrdersScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsOrdersScreenCubit cubit =
        RestaurantOutletsOrdersScreenCubit(
            context: context, restaurantOutletId: restaurantOutletId);
    controller?.cubit = cubit;
    return cubit;
  }
}
