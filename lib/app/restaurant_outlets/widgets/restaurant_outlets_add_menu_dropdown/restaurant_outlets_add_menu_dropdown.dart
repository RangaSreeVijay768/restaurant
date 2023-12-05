import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import '../../../themes/app_colors.dart';
import 'restaurant_outlets_add_menu_dropdown_controller.dart';
import 'restaurant_outlets_add_menu_dropdown_cubit.dart';

class RestaurantOutletsAddMenuDropdown extends BaseStatelessWidget<
    RestaurantOutletsAddMenuDropdownController,
    RestaurantOutletsAddMenuDropdownCubit,
    RestaurantOutletsAddMenuDropdownState> {
  RestaurantOutletsAddMenuDropdown({Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsAddMenuDropdownCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsAddMenuDropdownCubit,
          RestaurantOutletsAddMenuDropdownState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Expanded(
              child: DropdownMenu(
            inputDecorationTheme: const InputDecorationTheme(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.orange, width: 1))),
            width: MediaQuery.sizeOf(context).width / 1.09,
            initialSelection: 1,
            trailingIcon: Icon(CupertinoIcons.chevron_down),
            selectedTrailingIcon: Icon(CupertinoIcons.chevron_up),
            menuStyle: const MenuStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(AppColors.white),
            ),
            // controller: colorController,
            label: const Text(
              'Category',
              style: TextStyle(color: AppColors.grey1),
            ),
            dropdownMenuEntries: const [
              DropdownMenuEntry(
                value: 1,
                label: 'Starter',
              ),
              DropdownMenuEntry(value: 2, label: 'Desserts'),
              DropdownMenuEntry(value: 3, label: 'Beverages')
            ],
            onSelected: (color) {},
          ));
        },
      ),
    );
  }

  @override
  RestaurantOutletsAddMenuDropdownCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsAddMenuDropdownCubit cubit =
        RestaurantOutletsAddMenuDropdownCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
