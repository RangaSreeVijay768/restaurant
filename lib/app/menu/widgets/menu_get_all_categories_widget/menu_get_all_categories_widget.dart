import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/core/widgets/base_stateless_widget.dart';
import 'package:restaurant_pos/app/menu/widgets/menu_get_all_categories_widget/menu_get_all_categories_widget_controller.dart';
import 'package:restaurant_pos/app/menu/widgets/menu_get_all_categories_widget/menu_get_all_categories_widget_cubit.dart';

class MenuGetAllCategoriesWidget extends BaseStatelessWidget<
    MenuGetAllCategoriesWidgetController,
    MenuGetAllCategoriesWidgetCubit,
    MenuGetAllCategoriesWidgetState> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenuGetAllCategoriesWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<MenuGetAllCategoriesWidgetCubit,
          MenuGetAllCategoriesWidgetState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Container();
        },
      ),
    );
  }

  @override
  MenuGetAllCategoriesWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    MenuGetAllCategoriesWidgetCubit menuGetAllCategoriesWidgetCubit =
        MenuGetAllCategoriesWidgetCubit();
    controller?.cubit = menuGetAllCategoriesWidgetCubit;
    return menuGetAllCategoriesWidgetCubit;
  }
}
