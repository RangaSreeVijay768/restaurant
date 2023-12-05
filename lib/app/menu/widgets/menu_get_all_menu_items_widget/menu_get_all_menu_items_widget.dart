import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../restaurant_outlets/screens/restaurant_outlets_orders_add_item_screen/restaurant_outlets_orders_add_item_screen.dart';
import '/app/core/widgets/base_stateless_widget.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/borders.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import 'menu_get_all_menu_items_widget_controller.dart';
import 'menu_get_all_menu_items_widget_cubit.dart';

class MenuGetAllMenuItemsWidget extends BaseStatelessWidget<
    MenuGetAllMenuItemsWidgetController, MenuGetAllMenuItemsWidgetCubit,MenuGetAllMenuItemsWidgetState> {
  MenuGetAllMenuItemsWidget({Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenuGetAllMenuItemsWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<MenuGetAllMenuItemsWidgetCubit,
          MenuGetAllMenuItemsWidgetState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return SingleChildScrollView(
            child: state.menuGetAllMenuItemsResponse != null
                ? ListView.builder(
                    itemCount: state.menuGetAllMenuItemsResponse!.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Wrap(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 2.3,
                                padding: edge_insets_16,
                                decoration: BoxDecoration(
                                    border: borders.b_1px_grey2,
                                    borderRadius: borderRadius.br_10),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'images/flowers.png',
                                        height: 56,
                                        width: 56,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      state.menuGetAllMenuItemsResponse![index]
                                          .menuItemName
                                          .toString(),
                                      style:
                                          TextStyle(fontSize: Fonts.fontSize16),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "₹ 120",
                                      style: TextStyle(
                                          fontWeight: Fonts.f600,
                                          fontSize: Fonts.fontSize16),
                                    )
                                  ],
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RestaurantOutletsOrdersAddItemScreen()));
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    color: AppColors.orange,
                                  )),
                            ],
                          ),
                        ],
                      );
                    })
                : Center(
                    child: Text("loading items"),
                  ),
          );
        },
      ),
    );
  }

  @override
  MenuGetAllMenuItemsWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    MenuGetAllMenuItemsWidgetCubit cubit =
        MenuGetAllMenuItemsWidgetCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
