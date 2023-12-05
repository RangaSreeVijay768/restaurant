import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '../../widgets/restaurant_outlets_analytics_item_wise_pie_chart/restaurant_outlets_analytics_item_wise_pie_chart.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'restaurant_outlets_analytics_item_wise_screen_controller.dart';
import 'restaurant_outlets_analytics_item_wise_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsAnalyticsItemWiseScreen
    extends BaseStatelessWidget<
        RestaurantOutletsAnalyticsItemWiseScreenController,
        RestaurantOutletsAnalyticsItemWiseScreenCubit,
        RestaurantOutletsAnalyticsItemWiseScreenState> {

  RestaurantOutletsAnalyticsItemWiseScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsAnalyticsItemWiseScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          RestaurantOutletsAnalyticsItemWiseScreenCubit,
          RestaurantOutletsAnalyticsItemWiseScreenState>(
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
                Text("Top 10 report",style: TextStyle(
                    fontSize: Fonts.fontSize16,
                    fontWeight: Fonts.f600
                ),),
                SizedBox(height: 16,),
                RestaurantOutletsAnalyticsItemWisePieChart(),
                SizedBox(height: 32,),
                Text("Remaining report",style: TextStyle(
                    fontSize: Fonts.fontSize16,
                    fontWeight: Fonts.f600
                ),),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsAnalyticsItemWiseScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsAnalyticsItemWiseScreenCubit cubit = RestaurantOutletsAnalyticsItemWiseScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
