import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/core/modals/base_modal/base_modal_widget.dart';
import 'package:restaurant_pos/app/core/models/menus/menu.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_add_menu_modal/restaurant_outlets_add_menu_modal_content/restaurant_outlets_add_menu_modal_content.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_add_menu_modal/restaurant_outlets_add_menu_modal_content/restaurant_outlets_add_menu_modal_content_cubit.dart';
import 'package:restaurant_pos/app/themes/shadows.dart';

import '../../../core/models/menus/menu_item.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/edge_insets.dart';
import 'restaurant_outlets_add_menu_modal_controller.dart';
import 'restaurant_outlets_add_menu_modal_cubit.dart';

class RestaurantOutletsAddMenuModal extends BaseModalWidget<
    RestaurantOutletsAddMenuModalController,
    RestaurantOutletsAddMenuModalCubit,
    RestaurantOutletsAddMenuModalState,
    RestaurantOutletsAddMenuModalContentState> {
  Menu menu;

  RestaurantOutletsAddMenuModal(
      {Key? key, required this.menu, super.controller, super.onModalClosed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsAddMenuModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsAddMenuModalCubit,
          RestaurantOutletsAddMenuModalState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return Container(
            margin: edge_insets_b_50,
            padding: edge_insets_x_24,
            decoration: BoxDecoration(),
            child: IconButton(
              padding: edge_insets_16,
              style: IconButton.styleFrom(backgroundColor: AppColors.orange),
              color: AppColors.white,
              icon: const Icon(
                Icons.add,
                shadows: [shadows.bs_primary],
                size: 28,
              ),
              onPressed: () {
                getCubit(context).logEvent(name: "add_menu");
                openModal(context: context, cubit: getCubit(context));
              },
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsAddMenuModalCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsAddMenuModalCubit cubit =
        RestaurantOutletsAddMenuModalCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return RestaurantOutletsAddMenuModalContent(
      menu: menu,
    );
  }
}
