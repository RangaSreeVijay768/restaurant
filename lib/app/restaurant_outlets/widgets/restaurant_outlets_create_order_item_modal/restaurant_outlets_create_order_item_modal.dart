import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/core/models/orders/order.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_pos/app/core/modals/base_modal/base_modal_widget.dart';
import '../../../core/models/menus/menu.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import 'restaurant_outlets_create_order_item_modal_content/restaurant_outlets_create_order_item_modal_content.dart';
import 'restaurant_outlets_create_order_item_modal_controller.dart';
import 'restaurant_outlets_create_order_item_modal_cubit.dart';
import 'restaurant_outlets_create_order_item_modal_data.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsCreateOrderItemModal extends BaseModalWidget<
    RestaurantOutletsCreateOrderItemModalController,
    RestaurantOutletsCreateOrderItemModalCubit,
    RestaurantOutletsCreateOrderItemModalState,
    RestaurantOutletsCreateOrderItemModalData> {
  Menu menu;
  Order order;

  RestaurantOutletsCreateOrderItemModal(
      {required this.menu,
      required this.order,
      Key? key,
      super.controller,
      super.onStateChanged,
      super.onModalClosed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsCreateOrderItemModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsCreateOrderItemModalCubit,
          RestaurantOutletsCreateOrderItemModalState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: borderRadius.br_5),
                      side: BorderSide(color: AppColors.orange),
                      padding: edge_insets_y_12),
                  onPressed: () {
                    getCubit(context).logEvent(
                        name: 'create_order_item');
                    openModal(context: context, cubit: getCubit(context));
                  },
                  child: const Text(
                    "Add Item",
                    style: TextStyle(
                        fontWeight: Fonts.f600, color: AppColors.orange),
                  )));
        },
      ),
    );
  }

  @override
  RestaurantOutletsCreateOrderItemModalCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsCreateOrderItemModalCubit cubit =
        RestaurantOutletsCreateOrderItemModalCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return RestaurantOutletsCreateOrderItemModalContent(
      menu: menu,
      order: order,
    );
  }
}
