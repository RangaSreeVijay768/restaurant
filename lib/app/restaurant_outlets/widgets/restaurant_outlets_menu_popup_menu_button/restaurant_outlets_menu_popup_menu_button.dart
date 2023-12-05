import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_disable_menu_item/restaurant_outlets_disable_menu_item.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_get_menu_items_by_menu/restaurant_outlets_get_menu_items_by_menu.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_update_menu_item_modal/restaurant_outlets_update_menu_item_modal.dart';
import '../../../core/database/boolean_status.dart';
import '../../../core/models/menus/menu.dart';
import '../../../core/models/menus/menu_item.dart';
import '../../../themes/app_colors.dart';
import '../restaurant_outlets_get_menu_items_by_menu/restaurant_outlets_get_menu_items_by_menu_controller.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'restaurant_outlets_menu_popup_menu_button_controller.dart';
import 'restaurant_outlets_menu_popup_menu_button_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsMenuPopupMenuButton extends BaseStatelessWidget<
    RestaurantOutletsMenuPopupMenuButtonController,
    RestaurantOutletsMenuPopupMenuButtonCubit,
    RestaurantOutletsMenuPopupMenuButtonState> {

  Menu menu;
  MenuItem menuItem;
  dynamic onModalClosed;

  RestaurantOutletsMenuPopupMenuButton(
      {Key? key, super.controller, super.onStateChanged, required this.menuItem, required this.menu, this.onModalClosed})
      : super(key: key);

  RestaurantOutletsGetMenuItemsByMenuController restaurantOutletsGetMenuItemsByMenuController = RestaurantOutletsGetMenuItemsByMenuController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsMenuPopupMenuButtonCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          RestaurantOutletsMenuPopupMenuButtonCubit,
          RestaurantOutletsMenuPopupMenuButtonState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            padding: edge_insets_0,
            child: PopupMenuButton(
              padding: edge_insets_0,
              elevation: 10,
              shadowColor: AppColors.textHeading,
              surfaceTintColor: AppColors.bgPrimary,
              constraints: const BoxConstraints(
                // minWidth: 90,
                maxWidth: 150,
              ),
              color: AppColors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius.br_10),
              icon: const Icon(
                Icons.more_vert,
                color: AppColors.textHeading,
              ),
              offset: const Offset(0.0, 60.0),
              itemBuilder: (BuildContext context) =>
              [
                PopupMenuItem(
                  child: RestaurantOutletsUpdateMenuItemModal(
                    onStateChanged:
                        (restaurantOutletsUpdateMenuItemModalState) {
                      getCubit(context).emitState(state.copyWith(
                          restaurantOutletsUpdateMenuItemModalState:
                          restaurantOutletsUpdateMenuItemModalState));
                    },
                    menuItem: menuItem,
                    onModalClosed: onModalClosed,
                  ),
                ),
                PopupMenuItem(
                  child: RestaurantOutletsDisableMenuItem(
                    menu: menu,
                    onStateChanged:
                        (restaurantOutletsDisableMenuItemState) {
                      getCubit(context).emitState(state.copyWith(
                          restaurantOutletsDisableMenuItemState:
                          restaurantOutletsDisableMenuItemState));
                    },
                    menuItem: menuItem,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsMenuPopupMenuButtonCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsMenuPopupMenuButtonCubit cubit = RestaurantOutletsMenuPopupMenuButtonCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
