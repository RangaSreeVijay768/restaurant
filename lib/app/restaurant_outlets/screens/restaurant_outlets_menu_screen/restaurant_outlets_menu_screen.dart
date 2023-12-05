import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_add_menu_modal/restaurant_outlets_add_menu_modal.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_get_menu_items_by_menu/restaurant_outlets_get_menu_items_by_menu.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_get_menu_items_by_menu/restaurant_outlets_get_menu_items_by_menu_controller.dart';

import '../../widgets/restaurant_outlets_search_menu_form/restaurant_outlets_search_menu_form.dart';
import '../../widgets/restaurant_outlets_search_menu_form/restaurant_outlets_search_menu_form_controller.dart';
import '/app/core/widgets/base_stateless_widget.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/borders.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import 'restaurant_outlets_menu_screen_controller.dart';
import 'restaurant_outlets_menu_screen_cubit.dart';

class RestaurantOutletsMenuScreen extends BaseStatelessWidget<
    RestaurantOutletsMenuScreenController,
    RestaurantOutletsMenuScreenCubit,
    RestaurantOutletsMenuScreenState> {
  String restaurantOutletId;
  RestaurantOutletsSearchMenuFormController
  restaurantOutletsSearchMenuFormController =
  RestaurantOutletsSearchMenuFormController();
  RestaurantOutletsGetMenuItemsByMenuController
      restaurantOutletsGetMenuItemsByMenuController =
      RestaurantOutletsGetMenuItemsByMenuController();

  RestaurantOutletsMenuScreen(
      {required this.restaurantOutletId, Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsMenuScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsMenuScreenCubit,
          RestaurantOutletsMenuScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            body: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Column(
                  children: [
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
                    Expanded(child: Container(
                        padding: edge_insets_16,
                        child: state.getRestaurantOutletInfoResponse != null
                            ? RestaurantOutletsGetMenuItemsByMenu(
                          status: 'CREATED',
                            controller:
                            restaurantOutletsGetMenuItemsByMenuController,
                            menu: state.getRestaurantOutletInfoResponse!
                                .restaurantOutletMenu!.menu!)
                            : Text('loading menu')

                    )),
                  ],
                ),
                state.getRestaurantOutletInfoResponse?.restaurantOutletMenu!
                    .menu !=
                    null
                    ?
                RestaurantOutletsAddMenuModal(
                  menu: state.getRestaurantOutletInfoResponse!
                      .restaurantOutletMenu!.menu!,
                  onModalClosed: (data) {
                    if (data.status == BooleanStatus.success) {
                      restaurantOutletsGetMenuItemsByMenuController
                          .getChildCubit()
                          .getMenuItemsByMenu(
                          restaurantOutletsGetMenuItemsByMenuController
                              .getChildCubit()
                              .createRequestData());
                    }
                  },
                )
                    : SizedBox.shrink()
              ],
            )
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsMenuScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsMenuScreenCubit cubit = RestaurantOutletsMenuScreenCubit(
        restaurantOutletId: restaurantOutletId, context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
