import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/core/models/menus/menu_item.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_update_menu_item_modal/restaurant_outlets_update_menu_item_modal_content/restaurant_outlets_update_menu_item_modal_content_cubit.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_pos/app/core/modals/base_modal/base_modal_widget.dart';
import 'package:restaurant_pos/app/themes/fonts.dart';
import '../../../themes/app_colors.dart';
import 'restaurant_outlets_update_menu_item_modal_content/restaurant_outlets_update_menu_item_modal_content.dart';
import 'restaurant_outlets_update_menu_item_modal_controller.dart';
import 'restaurant_outlets_update_menu_item_modal_cubit.dart';
import 'restaurant_outlets_update_menu_item_modal_data.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsUpdateMenuItemModal extends BaseModalWidget<
    RestaurantOutletsUpdateMenuItemModalController,
    RestaurantOutletsUpdateMenuItemModalCubit,
    RestaurantOutletsUpdateMenuItemModalState,
    RestaurantOutletsUpdateMenuItemModalContentState> {
  MenuItem menuItem;

  RestaurantOutletsUpdateMenuItemModal(
      {required this.menuItem,
      Key? key,
      super.controller,
      super.onStateChanged,
      super.onModalClosed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsUpdateMenuItemModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsUpdateMenuItemModalCubit,
          RestaurantOutletsUpdateMenuItemModalState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return TextButton(
            style: TextButton.styleFrom(shape: RoundedRectangleBorder()),
            onPressed: () {
              Navigator.pop(context);
              openModal(context: context, cubit: getCubit(context));
              getCubit(context).logEvent(name: "update_menu_item");
            },
            child: const Row(
              children: [
                Icon(
                  Icons.edit,
                  color: AppColors.textHeading,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Edit",
                  style: TextStyle(
                      fontSize: Fonts.fontSize16, color: AppColors.textHeading),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsUpdateMenuItemModalCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsUpdateMenuItemModalCubit cubit =
        RestaurantOutletsUpdateMenuItemModalCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return RestaurantOutletsUpdateMenuItemModalContent(
      menuItem: menuItem,
    );
  }
}
