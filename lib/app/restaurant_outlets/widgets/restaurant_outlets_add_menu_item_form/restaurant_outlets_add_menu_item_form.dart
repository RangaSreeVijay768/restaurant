import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:restaurant_pos/app/core/models/menus/menu.dart';
import 'package:restaurant_pos/app/core/widgets/base_form_stateless_widget.dart';
import 'package:restaurant_pos/app/themes/app_colors.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:restaurant_pos/app/themes/fonts.dart';

import 'restaurant_outlets_add_menu_item_form_controller.dart';
import 'restaurant_outlets_add_menu_item_form_cubit.dart';

class RestaurantOutletsAddMenuItemForm extends BaseFormStatelessWidget<
    RestaurantOutletsAddMenuItemFormController,
    RestaurantOutletsAddMenuItemFormCubit,
    RestaurantOutletsAddMenuItemFormState> {
  Menu menu;

  RestaurantOutletsAddMenuItemForm(
      {Key? key, required this.menu, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsAddMenuItemFormCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsAddMenuItemFormCubit,
          RestaurantOutletsAddMenuItemFormState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          final formGroup = getCubit(context).formGroup;
          return ReactiveFormBuilder(
            form: () => formGroup,
            builder: (context, form, child) {
              return ReactiveForm(
                formGroup: formGroup,
                child: Column(
                  children: [
                    Container(
                      margin: edge_insets_16,
                      padding: edge_insets_x_8,
                      decoration: BoxDecoration(
                          color: AppColors.grey01,
                          border: borders.b_1px_orange,
                          borderRadius: borderRadius.br_5),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: edge_insets_t_4,
                            child: const Text(
                              "Item name",
                              style: TextStyle(
                                  fontSize: Fonts.fontSize12,
                                  color: AppColors.grey06),
                            ),
                          ),
                          ReactiveTextField<String>(
                            style: const TextStyle(fontWeight: Fonts.f500),
                            formControlName: 'menuItemName',
                            decoration: const InputDecoration(
                                focusedBorder: InputBorder.none,
                                hintText: 'Enter item name',
                                hintStyle: TextStyle(color: AppColors.grey4),
                                enabledBorder: InputBorder.none),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: edge_insets_x_16,
                      padding: edge_insets_x_8,
                      decoration: BoxDecoration(
                          color: AppColors.grey01,
                          border: borders.b_1px_orange,
                          borderRadius: borderRadius.br_5),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: edge_insets_t_4,
                            child: const Text(
                              "Price",
                              style: TextStyle(
                                  fontSize: Fonts.fontSize12,
                                  color: AppColors.grey06),
                            ),
                          ),
                          ReactiveTextField<String>(
                            style: TextStyle(fontWeight: Fonts.f500),
                            formControlName: 'price',
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                focusedBorder: InputBorder.none,
                                hintText: 'Enter price',
                                hintStyle: TextStyle(color: AppColors.grey4),
                                enabledBorder: InputBorder.none),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsAddMenuItemFormCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsAddMenuItemFormCubit cubit =
        RestaurantOutletsAddMenuItemFormCubit(context: context,menu: menu);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
