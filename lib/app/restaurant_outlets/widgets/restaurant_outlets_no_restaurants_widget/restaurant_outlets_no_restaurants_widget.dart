import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_get_restaurant_outlet_infos_by_user_account/restaurant_outlets_get_restaurant_outlet_infos_by_user_account_controller.dart';
import 'package:restaurant_pos/app/themes/app_colors.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import '../restaurant_outlets_add_restaurant_modal/restaurant_outlets_add_restaurant_modal.dart';
import '../restaurant_outlets_add_restaurant_modal/restaurant_outlets_add_restaurant_modal_controller.dart';
import '../restaurant_outlets_get_restaurant_outlet_infos_by_user_account/restaurant_outlets_get_restaurant_outlet_infos_by_user_account.dart';
import 'restaurant_outlets_no_restaurants_widget_controller.dart';
import 'restaurant_outlets_no_restaurants_widget_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsNoRestaurantsWidget extends BaseStatelessWidget<
    RestaurantOutletsNoRestaurantsWidgetController,
    RestaurantOutletsNoRestaurantsWidgetCubit,
    RestaurantOutletsNoRestaurantsWidgetState> {
  dynamic onModalClosed;

  RestaurantOutletsNoRestaurantsWidget(
      {Key? key, super.controller, super.onStateChanged, required this.onModalClosed})
      : super(key: key);
  RestaurantOutletsAddRestaurantModalController
      restaurantOutletsAddRestaurantModalController =
      RestaurantOutletsAddRestaurantModalController();
  RestaurantOutletsGetRestaurantOutletInfosByUserAccountController
      restaurantOutletsGetRestaurantOutletInfosByUserAccountController =
      RestaurantOutletsGetRestaurantOutletInfosByUserAccountController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsNoRestaurantsWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsNoRestaurantsWidgetCubit,
          RestaurantOutletsNoRestaurantsWidgetState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/no_restaurants.png",
                  width: 150,
                  height: 150,
                ),
                Text("Your restaurants list is looking empty"),
                SizedBox(
                  height: 40,
                ),
                RestaurantOutletsGetRestaurantOutletInfosByUserAccountEmptyWidget(
                  controller:
                      restaurantOutletsGetRestaurantOutletInfosByUserAccountController,
                ),
                RestaurantOutletsAddRestaurantModalSelect(
                  controller: restaurantOutletsAddRestaurantModalController,
                  onStateChanged: (restaurantOutletsAddRestaurantModalState) {
                    getCubit(context).emitState(state.copyWith(
                        restaurantOutletsAddRestaurantModalState:
                            restaurantOutletsAddRestaurantModalState));
                  },
                  onModalClosed: onModalClosed,
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsNoRestaurantsWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsNoRestaurantsWidgetCubit cubit =
        RestaurantOutletsNoRestaurantsWidgetCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
