import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/core/modals/base_modal/base_modal_widget.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_select_payment_type_modal/restaurant_outlets_select_payment_type_modal_content/restaurant_outlets_select_payment_type_modal_content.dart';

import '../../../core/models/orders/order.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/borders.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import 'restaurant_outlets_select_payment_type_modal_controller.dart';
import 'restaurant_outlets_select_payment_type_modal_cubit.dart';

class RestaurantOutletsSelectPaymentTypeModal extends BaseModalWidget<
    RestaurantOutletsSelectPaymentTypeModalController,
    RestaurantOutletsSelectPaymentTypeModalCubit,
    RestaurantOutletsSelectPaymentTypeModalState,
    dynamic> {
  Order order;
  RestaurantOutletsSelectPaymentTypeModal(
      {Key? key, super.controller, super.onStateChanged,super.onModalClosed, required this.order})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsSelectPaymentTypeModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsSelectPaymentTypeModalCubit,
          RestaurantOutletsSelectPaymentTypeModalState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: borderRadius.br_5),
                      backgroundColor: AppColors.orange,
                      padding: edge_insets_y_12),
                  onPressed: () {
                    openModal(context: context, cubit: getCubit(context));
                    getCubit(context).logEvent(name: "select_payment_type");
                  },
                  child: const Text(
                    "Checkout",
                    style: TextStyle(
                        fontWeight: Fonts.f600, color: AppColors.white),
                  )));
        },
      ),
    );
  }

  @override
  RestaurantOutletsSelectPaymentTypeModalCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsSelectPaymentTypeModalCubit cubit =
        RestaurantOutletsSelectPaymentTypeModalCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return RestaurantOutletsSelectPaymentTypeModalContent(order: order,);
  }
}
