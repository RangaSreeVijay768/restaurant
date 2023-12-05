import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/core/modals/base_modal_content/base_modal_content_widget.dart';
import 'package:restaurant_pos/app/core/models/modal_data.dart';
import 'package:restaurant_pos/app/core/models/orders/order_info.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_complete_order_payment/orders_complete_order_payment.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_complete_order_payment/orders_complete_order_payment_controller.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_start_order_payment/orders_start_order_payment.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_start_order_payment/orders_start_order_payment_controller.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_print_bill_widget/restaurant_outlets_print_bill_widget.dart';

import '../../../../core/database/boolean_status.dart';
import '../../../../core/models/orders/order.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/edge_insets.dart';
import '../../../../themes/fonts.dart';
import '../../../../themes/shadows.dart';
import '../../../../themes/borders.dart';
import 'restaurant_outlets_select_payment_type_modal_content_controller.dart';
import 'restaurant_outlets_select_payment_type_modal_content_cubit.dart';

class RestaurantOutletsSelectPaymentTypeModalContent extends BaseModalContent<
    RestaurantOutletsSelectPaymentTypeModalContentController,
    RestaurantOutletsSelectPaymentTypeModalContentCubit,
    RestaurantOutletsSelectPaymentTypeModalContentState,
    dynamic> {
  late final List<String> paymentType;
  Order order;

  RestaurantOutletsSelectPaymentTypeModalContent(
      {Key? key, super.controller, required this.order})
      : super(key: key) {
    paymentType = {'CASH', 'CARD', 'UPI'}.toList();
  }

  OrdersCompleteOrderPaymentController ordersCompleteOrderPaymentController =
      OrdersCompleteOrderPaymentController();

  OrdersStartOrderPaymentController ordersStartOrderPaymentController =
      OrdersStartOrderPaymentController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsSelectPaymentTypeModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsSelectPaymentTypeModalContentCubit,
          RestaurantOutletsSelectPaymentTypeModalContentState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            height: MediaQuery.of(context).size.height / 2.2,
            decoration: const BoxDecoration(
              borderRadius: borderRadius.br_t_20,
              color: AppColors.white,
            ),
            child: Column(
              children: [
                Container(
                  padding: edge_insets_16,
                  decoration: BoxDecoration(
                    border: borders.bb_1px_grey1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Select Payment type',
                        style: TextStyle(
                          color: AppColors.textHeading,
                          fontSize: Fonts.fontSize20,
                          fontWeight: Fonts.f700,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                            getCubit(context).logEvent(name: "restaurant_outlets_select_payment_type");
                          },
                          style: IconButton.styleFrom(padding: edge_insets_0),
                          icon: const Icon(Icons.clear))
                    ],
                  ),
                ),
                Flexible(
                  child: Container(
                    margin: edge_insets_t_24,
                    alignment: Alignment.topLeft,
                    height: MediaQuery.sizeOf(context).height,
                    padding: edge_insets_x_16,
                    child: Row(
                      children: [
                        Container(
                          margin: edge_insets_r_8,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                padding: edge_insets_x_16_y_4,
                                foregroundColor: AppColors.orange,
                                side: BorderSide(
                                    color: state.selectedPaymentType == 'CASH'
                                        ? AppColors.orange
                                        : AppColors.grey1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: borderRadius.br_5),
                                backgroundColor:
                                    state.selectedPaymentType == 'CASH'
                                        ? AppColors.orange
                                        : AppColors.white),
                            onPressed: () {
                              getCubit(context).selectPaymentType('CASH');
                            },
                            child: Text(
                              "Cash",
                              style: TextStyle(
                                  fontSize: Fonts.fontSize16,
                                  color: state.selectedPaymentType == 'CASH'
                                      ? AppColors.white
                                      : AppColors.grey1),
                            ),
                          ),
                        ),
                        Container(
                          margin: edge_insets_r_8,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                padding: edge_insets_x_16_y_4,
                                foregroundColor: AppColors.orange,
                                side: BorderSide(
                                    color: state.selectedPaymentType == 'CARD'
                                        ? AppColors.orange
                                        : AppColors.grey1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: borderRadius.br_5),
                                backgroundColor:
                                    state.selectedPaymentType == 'CARD'
                                        ? AppColors.orange
                                        : AppColors.white),
                            onPressed: () {
                              getCubit(context).selectPaymentType('CARD');
                            },
                            child: Text(
                              "Card",
                              style: TextStyle(
                                  fontSize: Fonts.fontSize16,
                                  color: state.selectedPaymentType == 'CARD'
                                      ? AppColors.white
                                      : AppColors.grey1),
                            ),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              padding: edge_insets_x_16_y_4,
                              foregroundColor: AppColors.orange,
                              side: BorderSide(
                                  color: state.selectedPaymentType == 'UPI'
                                      ? AppColors.orange
                                      : AppColors.grey1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: borderRadius.br_5),
                              backgroundColor:
                                  state.selectedPaymentType == 'UPI'
                                      ? AppColors.orange
                                      : AppColors.white),
                          onPressed: () {
                            getCubit(context).selectPaymentType('UPI');
                          },
                          child: Text(
                            "UPI",
                            style: TextStyle(
                                fontSize: Fonts.fontSize16,
                                color: state.selectedPaymentType == 'UPI'
                                    ? AppColors.white
                                    : AppColors.grey1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: edge_insets_x_16_y_12,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      border: borders.bt_1px_grey2,
                      boxShadow: const [shadows.bs_primary]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Grand total",
                            style: TextStyle(
                                color: AppColors.grey06,
                                fontSize: Fonts.fontSize12),
                          ),
                          Text(
                            order.amount.toString(),
                            style: TextStyle(
                                fontSize: Fonts.fontSize24,
                                fontWeight: Fonts.f700),
                          )
                        ],
                      ),
                      OrdersCompleteOrderPayment(
                        order: order,
                        controller: ordersCompleteOrderPaymentController,
                      ),
                      OrdersStartOrderPayment(
                        // order: order.orderId,
                        controller: ordersStartOrderPaymentController,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              padding: edge_insets_x_46_y_16,
                              backgroundColor: AppColors.orange,
                              shape: RoundedRectangleBorder(
                                  borderRadius: borderRadius.br_5)),
                          onPressed: (state.ordersStartOrderPaymentState
                                      ?.startOrderPaymentStatus ==
                                  BooleanStatus.pending)
                              ? null
                              : () async {
                                  OrderInfo orderInfo =
                                      await ordersStartOrderPaymentController
                                          .getChildCubit()
                                          .startOrderPayment(
                                              ordersStartOrderPaymentController
                                                  .getChildCubit()
                                                  .createRequestData(
                                                      order: order.orderId,
                                                      paymentGateway:
                                                          'RAZOR_PAY'));
                                  await ordersCompleteOrderPaymentController
                                      .getChildCubit()
                                      .completeOrderPayment(
                                      ordersCompleteOrderPaymentController
                                          .getChildCubit()
                                          .createRequestData(
                                          orderPayment: orderInfo
                                              .orderPayments![0]
                                              .orderPaymentId!));
                                  closeModal(context,
                                      ModalData(status: BooleanStatus.success, data: orderInfo));
                                  getCubit(context).logEvent(name: "restaurant_outlets_select_payment_type");

                                },
                          child: const Text(
                            "Complete Payment",
                            style: TextStyle(
                                fontWeight: Fonts.f600, color: AppColors.white),
                          ))
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsSelectPaymentTypeModalContentCubit
      createCubitAndAssignToController(BuildContext context) {
    RestaurantOutletsSelectPaymentTypeModalContentCubit cubit =
        RestaurantOutletsSelectPaymentTypeModalContentCubit(
            context: context, order: order);
    controller?.cubit = cubit;
    return cubit;
  }
}
