import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/core/models/menus/menu_item.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_menu_item/get_menu_item_response.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'menu_get_menu_item_controller.dart';
import 'menu_get_menu_item_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class MenuGetMenuItem
    extends BaseStatelessWidget<MenuGetMenuItemController,
        MenuGetMenuItemCubit,
        MenuGetMenuItemState> {

  String menuItemId;
  MenuGetMenuItem({Key? key, super.controller, super.onStateChanged, required this.menuItemId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenuGetMenuItemCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<MenuGetMenuItemCubit, MenuGetMenuItemState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getMenuItemResponse != null
          ? Text(state.getMenuItemResponse!.menuItemName.toString())
          : SizedBox();
        },
      ),
    );
  }

  @override
  MenuGetMenuItemCubit createCubitAndAssignToController(BuildContext context) {
    MenuGetMenuItemCubit cubit = MenuGetMenuItemCubit(context: context, menuItemId: menuItemId);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
