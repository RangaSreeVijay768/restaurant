import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/core/models/menus/menu_item.dart';
import 'package:restaurant_pos/app/core/models/modal_data.dart';
import 'package:restaurant_pos/app/core/models/orders/order.dart';
import 'package:restaurant_pos/app/orders/repos/models/orders_add_order_items/orders_add_order_items_request.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_add_order_items/orders_add_order_items.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import '../../../../core/models/menus/menu.dart';
import '../../../../orders/widgets/orders_add_order_items/orders_add_order_items_controller.dart';
import '../../../../orders/widgets/orders_create_order_item/orders_create_order_item_controller.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/fonts.dart';
import '../../restaurant_outlets_get_menu_items_by_menu/restaurant_outlets_get_menu_items_by_menu.dart';
import '../../restaurant_outlets_get_menu_items_by_menu/restaurant_outlets_get_menu_items_by_menu_controller.dart';
import '../../restaurant_outlets_search_menu_form/restaurant_outlets_search_menu_form.dart';
import '../../restaurant_outlets_search_menu_form/restaurant_outlets_search_menu_form_controller.dart';
import '/app/core/modals/base_modal_content/base_modal_content_widget.dart';
import '../restaurant_outlets_create_order_item_modal_data.dart';
import 'restaurant_outlets_create_order_item_modal_content_controller.dart';
import 'restaurant_outlets_create_order_item_modal_content_cubit.dart';

class RestaurantOutletsCreateOrderItemModalContent extends BaseModalContent<
    RestaurantOutletsCreateOrderItemModalContentController,
    RestaurantOutletsCreateOrderItemModalContentCubit,
    RestaurantOutletsCreateOrderItemModalContentState,
    RestaurantOutletsCreateOrderItemModalData> {
  Order order;
  Menu menu;
  OrdersAddOrderItemsController ordersAddOrderItemsController =
      OrdersAddOrderItemsController();
  RestaurantOutletsSearchMenuFormController
      restaurantOutletsSearchMenuFormController =
      RestaurantOutletsSearchMenuFormController();
  RestaurantOutletsGetMenuItemsByMenuController
      restaurantOutletsGetMenuItemsByMenuController =
      RestaurantOutletsGetMenuItemsByMenuController();

  RestaurantOutletsCreateOrderItemModalContent(
      {required this.menu,
      required this.order,
      Key? key,
      super.controller,
      super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsCreateOrderItemModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsCreateOrderItemModalContentCubit,
          RestaurantOutletsCreateOrderItemModalContentState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            height: MediaQuery.sizeOf(context).height / 1.1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: edge_insets_16,
                  decoration: BoxDecoration(border: borders.bb_1px_grey4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Select item',
                        style: TextStyle(
                          color: AppColors.textHeading,
                          fontSize: Fonts.fontSize20,
                          fontWeight: Fonts.f700,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                            getCubit(context).logEvent(name: "restaurant_outlets_create_order_item");
                          },
                          style: IconButton.styleFrom(padding: edge_insets_0),
                          icon: const Icon(Icons.clear))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: edge_insets_16,
                  child: RestaurantOutletsSearchMenuForm(
                    controller: restaurantOutletsSearchMenuFormController,
                    onStateChanged: (restaurantOutletsSearchMenuFormState) {
                      getCubit(context).emitState(state.copyWith(
                          restaurantOutletsSearchMenuFormState:
                              restaurantOutletsSearchMenuFormState));
                      restaurantOutletsGetMenuItemsByMenuController
                          .getChildCubit()
                          .getMenuItemsByMenu(
                              restaurantOutletsGetMenuItemsByMenuController
                                  .getChildCubit()
                                  .createRequestData(
                                      filterMenuItemName:
                                          restaurantOutletsSearchMenuFormState
                                              .filterMenuItemName));
                    },
                  ),
                ),
                Container(
                  margin: edge_insets_x_16,
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Starter",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: Fonts.f600, fontSize: Fonts.fontSize18),
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Expanded(
                  child: RestaurantOutletsGetMenuItemsByMenuWithSelect(
                    controller: restaurantOutletsGetMenuItemsByMenuController,
                    menu: menu,
                    onStateChanged: (restaurantOutletsGetMenuItemsByMenuState) {
                      getCubit(context).emitState(state.copyWith(
                          restaurantOutletsGetMenuItemsByMenuState:
                              restaurantOutletsGetMenuItemsByMenuState));
                    },
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: TextButton(
                      style: TextButton.styleFrom(
                          padding: edge_insets_y_12,
                          side: const BorderSide(color: AppColors.orange),
                          foregroundColor: AppColors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: borderRadius.br_5)),
                      onPressed: () {
                        Navigator.pop(context);
                        getCubit(context).logEvent(name: "restaurant_outlets_create_order_item");
                      },
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                            fontSize: Fonts.fontSize16,
                            color: AppColors.orange),
                      ),
                    )),
                    const SizedBox(
                      width: 16,
                    ),
                    OrdersAddOrderItems(
                      order: order,
                      controller: ordersAddOrderItemsController,
                    ),
                    Expanded(
                        child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: AppColors.orange,
                          foregroundColor: AppColors.orange,
                          padding: edge_insets_y_12,
                          shape: RoundedRectangleBorder(
                              borderRadius: borderRadius.br_5)),
                      onPressed: (state.ordersAddOrderItemsState
                                  ?.ordersAddOrderItemsStatus ==
                              BooleanStatus.pending)
                          ? null
                          : () async {
                              Map<MenuItem, int> menuItemCountMap = state
                                  .restaurantOutletsGetMenuItemsByMenuState!
                                  .menuItemCountMap;
                              List<AddOrderItemsRequestItems> requestItems =
                                  menuItemCountMap.entries
                                      .where((entry) => entry.value > 0)
                                      .map((entry) {
                                return AddOrderItemsRequestItems(
                                    menuItemId: entry.key.menuItemId!,
                                    itemAmount: (entry.key.price! * entry.value),
                                    itemQuantity: entry.value);
                              }).toList();
                              String addOrderItems =
                                  await ordersAddOrderItemsController
                                      .getChildCubit()
                                      .addOrderItems(
                                          ordersAddOrderItemsController
                                              .getChildCubit()
                                              .createRequestData(
                                                  requestItems: requestItems));
                              getCubit(context).logEvent(name: "restaurant_outlets_create_order_item");
                              closeModal(context,
                                  ModalData(status: BooleanStatus.success));
                            },
                      child: const Text(
                        "Checkout",
                        style: TextStyle(
                            fontSize: Fonts.fontSize16, color: AppColors.white),
                      ),
                    )),
                    const SizedBox(
                      width: 8,
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsCreateOrderItemModalContentCubit
      createCubitAndAssignToController(BuildContext context) {
    RestaurantOutletsCreateOrderItemModalContentCubit cubit =
        RestaurantOutletsCreateOrderItemModalContentCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
