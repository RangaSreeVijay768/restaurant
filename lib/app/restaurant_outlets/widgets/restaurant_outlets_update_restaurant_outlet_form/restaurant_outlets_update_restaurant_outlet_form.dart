import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_pos/app/core/widgets/base_form_stateless_widget.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import 'restaurant_outlets_update_restaurant_outlet_form_controller.dart';
import 'restaurant_outlets_update_restaurant_outlet_form_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsUpdateRestaurantOutletForm
    extends BaseFormStatelessWidget<
        RestaurantOutletsUpdateRestaurantOutletFormController,
        RestaurantOutletsUpdateRestaurantOutletFormCubit,
        RestaurantOutletsUpdateRestaurantOutletFormState> {
  RestaurantOutlet restaurantOutlet;

  RestaurantOutletsUpdateRestaurantOutletForm(
      {Key? key,
      super.controller,
      super.onStateChanged,
      required this.restaurantOutlet})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsUpdateRestaurantOutletFormCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsUpdateRestaurantOutletFormCubit,
          RestaurantOutletsUpdateRestaurantOutletFormState>(
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
                                "Restaurant name",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize12,
                                    color: AppColors.grey06),
                              ),
                            ),
                            ReactiveTextField<String>(
                              style: const TextStyle(fontWeight: Fonts.f500),
                              formControlName: 'restaurantName',
                              decoration: const InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  hintText: 'Enter your name',
                                  hintStyle: TextStyle(color: AppColors.grey4),
                                  enabledBorder: InputBorder.none),
                            ),
                          ],
                        ),
                      ),
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
                                "Restaurant Address",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize12,
                                    color: AppColors.grey06),
                              ),
                            ),
                            ReactiveTextField<String>(
                              style: const TextStyle(fontWeight: Fonts.f500),
                              formControlName: 'address',
                              decoration: const InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  hintText: 'Enter restaurant address',
                                  hintStyle: TextStyle(color: AppColors.grey4),
                                  enabledBorder: InputBorder.none),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ));
            },
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsUpdateRestaurantOutletFormCubit
      createCubitAndAssignToController(BuildContext context) {
    RestaurantOutletsUpdateRestaurantOutletFormCubit cubit =
        RestaurantOutletsUpdateRestaurantOutletFormCubit(
            context: context,
            restaurantOutlet: restaurantOutlet);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
