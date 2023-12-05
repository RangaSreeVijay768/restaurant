import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/core/modals/base_modal/base_modal_widget.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_add_restaurant_modal/restaurant_outlets_add_restaurant_modal_content/restaurant_outlets_add_restaurant_modal_content.dart';
import 'package:restaurant_pos/app/themes/shadows.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/borders.dart';
import '../../../themes/edge_insets.dart';
import 'restaurant_outlets_add_restaurant_modal_controller.dart';
import 'restaurant_outlets_add_restaurant_modal_cubit.dart';

class RestaurantOutletsAddRestaurantModal extends BaseModalWidget<
    RestaurantOutletsAddRestaurantModalController,
    RestaurantOutletsAddRestaurantModalCubit,
    RestaurantOutletsAddRestaurantModalState,
    String> {
  RestaurantOutletsAddRestaurantModal(
      {super.onModalClosed, super.controller, super.onStateChanged});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsAddRestaurantModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsAddRestaurantModalCubit,
          RestaurantOutletsAddRestaurantModalState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            decoration: BoxDecoration(
                boxShadow: const [shadows.bs_primary],
              borderRadius: borderRadius.br_30
            ),
            // alignment: Alignment.centerRight,
            margin: edge_insets_24,
            // padding: edge_insets_x_24,
            child: IconButton(
              padding: edge_insets_16,
              style: IconButton.styleFrom(backgroundColor: AppColors.orange),
              color: AppColors.white,
              icon: Icon(
                Icons.add,
                size: 28,
              ),
              onPressed: () {
                openModal(context: context, cubit: getCubit(context));
              },
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsAddRestaurantModalCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsAddRestaurantModalCubit cubit =
        RestaurantOutletsAddRestaurantModalCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return RestaurantOutletsAddRestaurantModalContent();
  }
}


class RestaurantOutletsAddRestaurantModalSelect extends RestaurantOutletsAddRestaurantModal{
  RestaurantOutletsAddRestaurantModalSelect(
      {super.onModalClosed, super.controller, super.onStateChanged});

  @override
  Widget build(BuildContext context){
    return BlocProvider<RestaurantOutletsAddRestaurantModalCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsAddRestaurantModalCubit, RestaurantOutletsAddRestaurantModalState>(
        listener: (context, state){
          if(onStateChanged!=null){
            onStateChanged!(state);
          }
        },
        builder: (context, state){
          initializeController(context);
          return TextButton.icon(
              style: TextButton.styleFrom(
                  backgroundColor: AppColors.orange,
                  padding: edge_insets_x_24,
                  shape: RoundedRectangleBorder(
                      borderRadius: borderRadius.br_5)),
              onPressed: () {
                openModal(context: context, cubit: getCubit(context));
              },
              icon: Icon(
                Icons.add,
                color: AppColors.white,
              ),
              label: Text(
                "Add Restaurant",
                style: TextStyle(color: AppColors.white),
              ));
        },
      ),
    );
  }
}
