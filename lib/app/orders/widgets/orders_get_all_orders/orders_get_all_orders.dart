import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/orders/utils/order_utils.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import '../../../restaurant_outlets/screens/restaurant_outlets_orders_add_item_screen/restaurant_outlets_orders_add_item_screen.dart';
import '../../../restaurant_outlets/widgets/restaurant_outlets_print_bill_widget/restaurant_outlets_print_bill_widget.dart';
import '../../../restaurant_outlets/widgets/restaurant_outlets_select_payment_type_modal/restaurant_outlets_select_payment_type_modal.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/borders.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import 'orders_get_all_orders_controller.dart';
import 'orders_get_all_orders_cubit.dart';

class OrdersGetAllOrders extends BaseStatelessWidget<
    OrdersGetAllOrdersController,
    OrdersGetAllOrdersCubit,
    OrdersGetAllOrdersState> {
  OrdersGetAllOrders({Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersGetAllOrdersCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<OrdersGetAllOrdersCubit, OrdersGetAllOrdersState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                  margin: edge_insets_t_20,
                  child: state.getAllOrdersResponse != null
                      ? ListView.builder(
                          itemCount: state.getAllOrdersResponse!.length,
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
                                          "${OrderUtils.getRestaurantHumanReadableCode("CHA SAMOSA")} - ${OrderUtils.getOrderHumanReadableCode(state.getAllOrdersResponse![index].orderId!)}",
                                          style: TextStyle(
                                            fontWeight: Fonts.f700,
                                            fontSize: Fonts.fontSize24,
                                          ),
                                        ),
                                        IconButton(
                                            style: IconButton.styleFrom(
                                              backgroundColor:
                                                  AppColors.lightOrange,
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          RestaurantOutletsPrintBillWidget(orderId: '', orderTime: '', amount: '', items: '',)));
                                            },
                                            icon: Icon(Icons.print_outlined))
                                      ],
                                    ),
                                  ),
                                  Container(
                                      padding: edge_insets_x_8,
                                      child: const Row(
                                        children: [
                                          Text("Order Time:"),
                                          Text(" 09:42 AM")
                                        ],
                                      )),
                                  Container(
                                    margin: edge_insets_x_8,
                                    padding: edge_insets_t_16,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      border: borders.b_1px_red,
                                                      borderRadius:
                                                          borderRadius.br_5),
                                                  padding: edge_insets_5,
                                                  child: const Row(
                                                    children: [
                                                      Icon(
                                                        Icons.timer_outlined,
                                                        color:
                                                            AppColors.textRed,
                                                      ),
                                                      SizedBox(
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "00:33",
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .textRed),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                const Text("Coffee"),
                                                const SizedBox(
                                                  width: 12,
                                                ),
                                                const Text("x2"),
                                              ],
                                            ),
                                            const Text(
                                              "₹ 40",
                                              style: TextStyle(
                                                  fontSize: Fonts.fontSize14,
                                                  fontWeight: Fonts.f600),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      border:
                                                          borders.b_1px_green,
                                                      borderRadius:
                                                          borderRadius.br_5),
                                                  padding: edge_insets_5,
                                                  child: const Row(
                                                    children: [
                                                      Icon(
                                                        Icons.check,
                                                        color: AppColors.green,
                                                      ),
                                                      SizedBox(
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "00:33",
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .green),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                const Text("Tea"),
                                                const SizedBox(
                                                  width: 12,
                                                ),
                                                const Text("x1"),
                                              ],
                                            ),
                                            const Text(
                                              "₹ 10",
                                              style: TextStyle(
                                                  fontSize: Fonts.fontSize14,
                                                  fontWeight: Fonts.f600),
                                            )
                                          ],
                                        )
                                      ],
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
                                          state.getAllOrdersResponse![index]
                                              .amount
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
                                      Expanded(
                                          child: TextButton(
                                              style: TextButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          borderRadius.br_5),
                                                  side: BorderSide(
                                                      color: AppColors.orange),
                                                  padding: edge_insets_y_12),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            RestaurantOutletsOrdersAddItemScreen()));
                                              },
                                              child: const Text(
                                                "Add Item",
                                                style: TextStyle(
                                                    fontWeight: Fonts.f600,
                                                    color: AppColors.orange),
                                              ))),
                                      SizedBox(
                                        width: 16,
                                      ),

                                      SizedBox(
                                        width: 8,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          })
                      : const Center(
                          child: Text('Loading orders'),
                        )),
              Container(
                // alignment: Alignment.centerRight,
                margin: edge_insets_b_50,
                padding: edge_insets_x_24,
                child: IconButton(
                  padding: edge_insets_16,
                  style:
                      IconButton.styleFrom(backgroundColor: AppColors.orange),
                  color: AppColors.white,
                  icon: Icon(
                    Icons.add,
                    size: 28,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                RestaurantOutletsOrdersAddItemScreen()));
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }

  @override
  OrdersGetAllOrdersCubit createCubitAndAssignToController(
      BuildContext context) {
    OrdersGetAllOrdersCubit cubit = OrdersGetAllOrdersCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
