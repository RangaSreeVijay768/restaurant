import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_pos/app/core/widgets/base_form_stateless_widget.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../themes/app_colors.dart';
import '../restaurant_outlets_get_menu_items_by_menu/restaurant_outlets_get_menu_items_by_menu_controller.dart';
import 'restaurant_outlets_search_menu_form_controller.dart';
import 'restaurant_outlets_search_menu_form_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsSearchMenuForm
    extends BaseFormStatelessWidget<
        RestaurantOutletsSearchMenuFormController,
        RestaurantOutletsSearchMenuFormCubit,
        RestaurantOutletsSearchMenuFormState> {
  RestaurantOutletsGetMenuItemsByMenuController restaurantOutletsGetMenuItemsByMenuController =
  RestaurantOutletsGetMenuItemsByMenuController();

  RestaurantOutletsSearchMenuForm(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsSearchMenuFormCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          RestaurantOutletsSearchMenuFormCubit,
          RestaurantOutletsSearchMenuFormState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
            // getCubit(context).emitState(state.copyWith(state.filterMenuItemName));
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
                  child: ReactiveTextField(
                    formControlName: 'search',
                    onChanged: (value){

                    },
                    decoration: InputDecoration(
                        prefixIconConstraints: const BoxConstraints(
                            minWidth: 50
                        ),
                        prefixIcon: const Icon(Icons.search),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: borderRadius.br_100,
                          borderSide:
                          const BorderSide(width: 2, color: AppColors.bgPrimary),
                        ),
                        hintText: 'Search menu',
                        fillColor: AppColors.primary,
                        contentPadding: edge_insets_x_16_y_20,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: borderRadius.br_100,
                            borderSide: BorderSide(width: 1))),
                  ));
            },
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsSearchMenuFormCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsSearchMenuFormCubit cubit = RestaurantOutletsSearchMenuFormCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
