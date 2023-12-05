import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/bluetooth/state/bluetooth_cubit.dart';
import 'package:restaurant_pos/app/bluetooth/widgets/bluetooth_print_print_receipt/bluetooth_print_print_receipt.dart';
import 'package:restaurant_pos/app/bluetooth/widgets/bluetooth_print_print_receipt/bluetooth_print_print_receipt_controller.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/core/logger/log.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet_info.dart';
import 'package:restaurant_pos/app/core/utils/app_date_time_utils.dart';
import 'package:restaurant_pos/app/core/widgets/core_counter_timer/core_counter_timer_controller.dart';
import 'package:restaurant_pos/app/orders/utils/order_utils.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_update_order_item/orders_update_order_item.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_update_order_item/orders_update_order_item_controller.dart';
import 'package:restaurant_pos/app/restaurant_outlets/screens/restaurant_outlets_printers_screen/restaurant_outlets_printers_screen.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_get_menu_items_by_menu/restaurant_outlets_get_menu_items_by_menu_controller.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_select_payment_type_modal/restaurant_outlets_select_payment_type_modal.dart';
import 'package:restaurant_pos/app/themes/app_colors.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:restaurant_pos/app/themes/fonts.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import '../../../core/widgets/core_counter_timer/core_counter_timer.dart';
import '../../../restaurant_outlets/widgets/restaurant_outlets_create_order_item_modal/restaurant_outlets_create_order_item_modal.dart';
import 'orders_get_order_infos_by_restaurant_outlet_controller.dart';
import 'orders_get_order_infos_by_restaurant_outlet_cubit.dart';

class OrdersGetOrderInfosByRestaurantOutlet extends BaseStatelessWidget<
    OrdersGetOrderInfosByRestaurantOutletController,
    OrdersGetOrderInfosByRestaurantOutletCubit,
    OrdersGetOrderInfosByRestaurantOutletState> {
  RestaurantOutletInfo restaurantOutletInfo;
  String? status;

  OrdersUpdateOrderItemController ordersUpdateOrderItemController =
      OrdersUpdateOrderItemController();
  BluetoothPrintPrintReceiptController bluetoothPrintPrintReceiptController =
      BluetoothPrintPrintReceiptController();

  OrdersGetOrderInfosByRestaurantOutlet(
      {required this.restaurantOutletInfo,
      this.status,
      Key? key,
      super.controller})
      : super(key: key);
  OrdersGetOrderInfosByRestaurantOutletController
      ordersGetOrderInfosByRestaurantOutletController =
      OrdersGetOrderInfosByRestaurantOutletController();
  RestaurantOutletsGetMenuItemsByMenuController
      restaurantsGetMenuItemsByMenuController =
      RestaurantOutletsGetMenuItemsByMenuController();
  CoreCounterTimerController coreCounterTimerController =
      CoreCounterTimerController();
  Map<String, CoreCounterTimerController> coreCounterTimerControllerMap =
      HashMap();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersGetOrderInfosByRestaurantOutletCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocListener<BluetoothCubit, BluetoothState>(
        listener: (context, state) {
          getCubit(context).emitState(
              getCubit(context).state.copyWith(bluetoothState: state));
        },
        child: BlocConsumer<OrdersGetOrderInfosByRestaurantOutletCubit,
            OrdersGetOrderInfosByRestaurantOutletState>(
          listener: (context, state) {
            if (onStateChanged != null) {
              onStateChanged!(state);
            }
          },
          builder: (context, state) {
            initializeController(context);
            String orderTime = getCubit(context).getCurrentTime();
            return Container(
                margin: edge_insets_t_20,
                child: state.getOrderInfosByRestaurantOutletResponse != null
                    ? state.getOrderInfosByRestaurantOutletResponse!.isNotEmpty
                        ? ListView.builder(
                            itemCount: state
                                .getOrderInfosByRestaurantOutletResponse!
                                .length,
                            itemBuilder: (context, index) {
                              return Container(
                                // height: 255,
                                margin: edge_insets_16,
                                padding: edge_insets_y_8,
                                decoration: BoxDecoration(
                                    border: borders.b_1px_grey2,
                                    borderRadius: borderRadius.br_10),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: edge_insets_x_8,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${OrderUtils.getRestaurantHumanReadableCode(restaurantOutletInfo.restaurantOutlet!.restaurantOutletName!)} - ${OrderUtils.getOrderHumanReadableCode(state.getOrderInfosByRestaurantOutletResponse![index].order!.orderId!)}",
                                            style: TextStyle(
                                              fontWeight: Fonts.f700,
                                              fontSize: Fonts.fontSize24,
                                            ),
                                          ),
                                          BluetoothPrintPrintReceipt(
                                            controller:
                                                bluetoothPrintPrintReceiptController,
                                            onStateChanged:
                                                (bluetoothPrintPrintReceiptState) {},
                                          ),
                                          IconButton(
                                              style: IconButton.styleFrom(
                                                backgroundColor:
                                                    AppColors.lightOrange,
                                              ),
                                              onPressed: (state.bluetoothState
                                                          ?.bluetoothStatus ==
                                                      BooleanStatus.pending)
                                                  ? () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantOutletsPrintersScreen()));
                                              }
                                                  : () async {
                                                await bluetoothPrintPrintReceiptController
                                                    .getChildCubit()
                                                    .printReceipt(bluetoothPrintPrintReceiptController
                                                    .getChildCubit()
                                                    .createRequestData(
                                                    data: OrderUtils.getPrintReceiptText(
                                                        restaurantOutletInfo,
                                                        state.getOrderInfosByRestaurantOutletResponse![
                                                        index])));
                                              },
                                              icon: Icon(Icons.print_outlined)),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        padding: edge_insets_x_8,
                                        child: Row(
                                          children: [
                                            const Text("Order Time:"),
                                            Text(AppDateTimeUtils.formatDateTime(
                                                state
                                                        .getOrderInfosByRestaurantOutletResponse![
                                                            index]
                                                        .order!
                                                        .createdTime ??
                                                    AppDateTimeUtils
                                                        .getCurrentTimeOfDay(),
                                                AppDateTimeUtils
                                                    .defaultTimeForm))
                                          ],
                                        )),
                                    Container(
                                      margin: edge_insets_x_8,
                                      padding: edge_insets_t_16,
                                      child: Column(
                                        children: state
                                                .getOrderInfosByRestaurantOutletResponse![
                                                    index]
                                                .orderItems!
                                                .isNotEmpty
                                            ? state
                                                .getOrderInfosByRestaurantOutletResponse![
                                                    index]
                                                .orderItems!
                                                .map((e) {
                                                coreCounterTimerControllerMap[
                                                        e.orderItemId!] =
                                                    CoreCounterTimerController();
                                                return Container(
                                                  margin: edge_insets_b_8,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          OrdersUpdateOrderItem(
                                                            controller:
                                                                ordersUpdateOrderItemController,
                                                            onStateChanged:
                                                                (ordersUpdateOrderItemState) {
                                                              getCubit(context)
                                                                  .emitState(state
                                                                      .copyWith(
                                                                          ordersUpdateOrderItemState:
                                                                              ordersUpdateOrderItemState));
                                                            },
                                                          ),
                                                          Container(
                                                            decoration: BoxDecoration(
                                                                border: e.itemDeliveryStatus !=
                                                                        'COMPLETED'
                                                                    ? borders
                                                                        .b_1px_red
                                                                    : borders
                                                                        .b_1px_green,
                                                                borderRadius:
                                                                    borderRadius
                                                                        .br_5),
                                                            padding:
                                                                edge_insets_5,
                                                            child: Row(
                                                              children: [
                                                                e.itemDeliveryStatus !=
                                                                        'COMPLETED'
                                                                    ? Icon(
                                                                        Icons
                                                                            .timer_outlined,
                                                                        color: AppColors
                                                                            .textRed,
                                                                      )
                                                                    : Icon(
                                                                        Icons
                                                                            .check,
                                                                        color: AppColors
                                                                            .green,
                                                                      ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                e.itemDeliveryStatus !=
                                                                        'COMPLETED'
                                                                    ? CoreCounterTimer(
                                                                        controller:
                                                                            coreCounterTimerControllerMap[e.orderItemId!],
                                                                        onTimerClicked:
                                                                            () async {
                                                                          await ordersUpdateOrderItemController.getChildCubit().updateOrderItem(ordersUpdateOrderItemController.getChildCubit().createRequestData(
                                                                              orderItemId: e.orderItemId,
                                                                              itemQuantity: e.itemQuantity,
                                                                              itemAmount: e.itemAmount,
                                                                              itemDeliveryStatus: 'COMPLETED',
                                                                              itemDeliveryTime: DateTime.now()));
                                                                          await coreCounterTimerControllerMap[e.orderItemId!]!
                                                                              .getChildCubit()
                                                                              .stopTimer();
                                                                          getCubit(context)
                                                                              .getOrderInfosByRestaurantOutlet(getCubit(context).createRequestData());
                                                                        },
                                                                        order: state
                                                                            .getOrderInfosByRestaurantOutletResponse![index]
                                                                            .order!,
                                                                      )
                                                                    : const Text(
                                                                        'Finished',
                                                                        style: TextStyle(
                                                                            color:
                                                                                AppColors.green),
                                                                      ),
                                                              ],
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 8,
                                                          ),
                                                          Text(e.menuItem!
                                                              .menuItemName
                                                              .toString()),
                                                          const SizedBox(
                                                            width: 12,
                                                          ),
                                                          Text(
                                                              "x${e.itemQuantity}"),
                                                        ],
                                                      ),
                                                      Text(
                                                        "₹ ${e.itemAmount}",
                                                        style: const TextStyle(
                                                            fontSize: Fonts
                                                                .fontSize14,
                                                            fontWeight:
                                                                Fonts.f600),
                                                      )
                                                    ],
                                                  ),
                                                );
                                              }).toList()
                                            : [Text('No items')],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.grey2,
                                          borderRadius: borderRadius.br_10),
                                      padding: edge_insets_8,
                                      margin: edge_insets_y_8,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Grand Total"),
                                          Text(
                                            (state.getOrderInfosByRestaurantOutletResponse![index]
                                                        .order!.amount ??
                                                    10)
                                                .toString(),
                                            style: const TextStyle(
                                                fontSize: Fonts.fontSize14,
                                                fontWeight: Fonts.f600),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 8,
                                        ),
                                        RestaurantOutletsCreateOrderItemModal(
                                          order: state
                                              .getOrderInfosByRestaurantOutletResponse![
                                                  index]
                                              .order!,
                                          menu: restaurantOutletInfo
                                              .restaurantOutletMenu!.menu!,
                                          onModalClosed: (modalData) async {
                                            if (modalData.status ==
                                                BooleanStatus.success) {
                                              await getCubit(context)
                                                  .getOrderInfosByRestaurantOutlet(getCubit(
                                                          context)
                                                      .createRequestData(
                                                          restaurantOutletId:
                                                              restaurantOutletInfo
                                                                  .restaurantOutlet!
                                                                  .restaurantOutletId));
                                            }
                                          },
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        RestaurantOutletsSelectPaymentTypeModal(
                                            onStateChanged:
                                                (restaurantOutletsSelectPaymentTypeModalState) {
                                              getCubit(context).emitState(
                                                  state.copyWith(
                                                      restaurantOutletsSelectPaymentTypeModalState:
                                                          restaurantOutletsSelectPaymentTypeModalState));
                                            },
                                            onModalClosed: (data) async{
                                              if (data.status ==
                                                  BooleanStatus.success) {
                                                await getCubit(context)
                                                    .getOrderInfosByRestaurantOutlet(
                                                        getCubit(context)
                                                            .createRequestData(restaurantOutletId: restaurantOutletInfo.restaurantOutlet!.restaurantOutletId));
                                              }
                                            },
                                            order: state
                                                .getOrderInfosByRestaurantOutletResponse![
                                                    index]
                                                .order!),
                                        SizedBox(
                                          width: 8,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            })
                        : Center(
                            child: Text("No orders"),
                          )
                    : const Center(
                        child: Text('Loading orders'),
                      ));
          },
        ),
      ),
    );
  }

  @override
  OrdersGetOrderInfosByRestaurantOutletCubit createCubitAndAssignToController(
      BuildContext context) {
    // logger.d(restaurantOutlet.toJson());
    OrdersGetOrderInfosByRestaurantOutletCubit cubit =
        OrdersGetOrderInfosByRestaurantOutletCubit(
            restaurantOutlet: restaurantOutletInfo.restaurantOutlet!,
            status: status,
            context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}

class OrdersGetOrderInfosByRestaurantOutletCompleted
    extends OrdersGetOrderInfosByRestaurantOutlet {
  OrdersGetOrderInfosByRestaurantOutletCompleted(
      {required super.restaurantOutletInfo, super.status, super.controller});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersGetOrderInfosByRestaurantOutletCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<OrdersGetOrderInfosByRestaurantOutletCubit,
          OrdersGetOrderInfosByRestaurantOutletState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
              margin: edge_insets_t_20,
              child: state.getOrderInfosByRestaurantOutletResponse != null
                  ? state.getOrderInfosByRestaurantOutletResponse!.isNotEmpty
                      ? ListView.builder(
                          itemCount: state
                              .getOrderInfosByRestaurantOutletResponse!.length,
                          itemBuilder: (context, index) {
                            return Container(
                              // height: 255,
                              margin: edge_insets_16,
                              padding: edge_insets_y_8,
                              decoration: BoxDecoration(
                                  border: borders.b_1px_grey2,
                                  borderRadius: borderRadius.br_10),
                              child: Column(
                                children: [
                                  Container(
                                    padding: edge_insets_x_8,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${OrderUtils.getRestaurantHumanReadableCode(restaurantOutletInfo.restaurantOutlet!.restaurantOutletName!)}- ${OrderUtils.getOrderHumanReadableCode(state.getOrderInfosByRestaurantOutletResponse![index].order!.orderId!)}",
                                          style: TextStyle(
                                            fontWeight: Fonts.f700,
                                            fontSize: Fonts.fontSize24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      padding: edge_insets_x_8,
                                      child: Row(
                                        children: [
                                          const Text("Order Time:"),
                                          Text(AppDateTimeUtils.formatDateTime(
                                              state
                                                      .getOrderInfosByRestaurantOutletResponse![
                                                          index]
                                                      .order!
                                                      .createdTime ??
                                                  AppDateTimeUtils
                                                      .getCurrentTimeOfDay(),
                                              AppDateTimeUtils.defaultTimeForm))
                                        ],
                                      )),
                                  Container(
                                    margin: edge_insets_x_8,
                                    padding: edge_insets_t_16,
                                    child: Column(
                                      children: state
                                              .getOrderInfosByRestaurantOutletResponse![
                                                  index]
                                              .orderItems!
                                              .isNotEmpty
                                          ? state
                                              .getOrderInfosByRestaurantOutletResponse![
                                                  index]
                                              .orderItems!
                                              .map((e) {
                                              logger.e(e.toJson());
                                              return Container(
                                                margin: edge_insets_b_8,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: borders
                                                                  .b_1px_green,
                                                              borderRadius:
                                                                  borderRadius
                                                                      .br_5),
                                                          padding:
                                                              edge_insets_5,
                                                          child: const Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .check,
                                                                color: AppColors
                                                                    .green,
                                                              ),
                                                              SizedBox(
                                                                width: 4,
                                                              ),
                                                              Text(
                                                                "Finished",
                                                                style: TextStyle(
                                                                    color: AppColors
                                                                        .green),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 8,
                                                        ),
                                                        Text(e.menuItem!
                                                            .menuItemName
                                                            .toString()),
                                                        const SizedBox(
                                                          width: 12,
                                                        ),
                                                        Text(
                                                            "x${e.itemQuantity}"),
                                                      ],
                                                    ),
                                                    Text(
                                                      "₹ ${e.itemAmount}",
                                                      style: const TextStyle(
                                                          fontSize:
                                                              Fonts.fontSize14,
                                                          fontWeight:
                                                              Fonts.f600),
                                                    )
                                                  ],
                                                ),
                                              );
                                            }).toList()
                                          : [Text('No items')],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.grey2,
                                        borderRadius: borderRadius.br_10),
                                    padding: edge_insets_8,
                                    margin: edge_insets_y_8,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Grand Total"),
                                        Text(
                                          state.getOrderInfosByRestaurantOutletResponse![index].order!.amount.toString(),
                                          style: TextStyle(
                                              fontSize: Fonts.fontSize14,
                                              fontWeight: Fonts.f600),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          })
                      : Center(
                          child: Text("No orders"),
                        )
                  : const Center(
                      child: Text('Loading orders'),
                    ));
        },
      ),
    );
  }
}
