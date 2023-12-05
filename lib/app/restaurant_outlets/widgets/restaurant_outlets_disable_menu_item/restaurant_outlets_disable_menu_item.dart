import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_get_menu_items_by_menu/restaurant_outlets_get_menu_items_by_menu.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_get_menu_items_by_menu/restaurant_outlets_get_menu_items_by_menu_controller.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_get_restaurant_outlet_infos_by_user_account/restaurant_outlets_get_restaurant_outlet_infos_by_user_account.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_get_restaurant_outlet_infos_by_user_account/restaurant_outlets_get_restaurant_outlet_infos_by_user_account_controller.dart';
import 'package:restaurant_pos/app/themes/app_colors.dart';
import 'package:restaurant_pos/app/themes/fonts.dart';
import '../../../core/models/menus/menu.dart';
import '../../../core/models/menus/menu_item.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'restaurant_outlets_disable_menu_item_controller.dart';
import 'restaurant_outlets_disable_menu_item_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsDisableMenuItem extends BaseStatelessWidget<
    RestaurantOutletsDisableMenuItemController,
    RestaurantOutletsDisableMenuItemCubit,
    RestaurantOutletsDisableMenuItemState> {
  MenuItem menuItem;
  Menu menu;

  RestaurantOutletsDisableMenuItem(
      {Key? key,
      super.controller,
      super.onStateChanged,
      required this.menu,
      required this.menuItem})
      : super(key: key);
  RestaurantOutletsGetMenuItemsByMenuController
      restaurantOutletsGetMenuItemsByMenuController =
      RestaurantOutletsGetMenuItemsByMenuController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsDisableMenuItemCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsDisableMenuItemCubit,
          RestaurantOutletsDisableMenuItemState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Column(
            children: [
              RestaurantOutletsGetMenuItemsByMenuEmptyWidget(
                status: 'CREATED',
                onStateChanged: (restaurantOutletsGetMenuItemsByMenuState) {
                  getCubit(context).emitState(state.copyWith(
                      restaurantOutletsGetMenuItemsByMenuState:
                          restaurantOutletsGetMenuItemsByMenuState));
                },
                menu: menu,
                controller: restaurantOutletsGetMenuItemsByMenuController,
              ),
              TextButton(
                  onPressed:
                      (state.disableMenuItemStatus == BooleanStatus.pending)
                          ? null
                          : () async {
                              Navigator.pop(context);
                              await getCubit(context).disableMenuItem(
                                  getCubit(context).createRequestData());
                              await restaurantOutletsGetMenuItemsByMenuController
                                  .getChildCubit()
                                  .getMenuItemsByMenu(
                                      restaurantOutletsGetMenuItemsByMenuController
                                          .getChildCubit()
                                          .createRequestData());
                            },
                  child: const Row(
                    children: [
                      Icon(
                        Icons.delete,
                        color: AppColors.textHeading,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Delete",
                        style: TextStyle(
                            fontSize: Fonts.fontSize16, color: AppColors.textHeading),
                      )
                    ],
                  ))
            ],
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsDisableMenuItemCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsDisableMenuItemCubit cubit =
        RestaurantOutletsDisableMenuItemCubit(
            context: context, menuItem: menuItem, menu: menu);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
