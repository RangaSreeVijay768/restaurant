import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import '../../../themes/borders.dart';
import 'restaurant_outlets_orders_add_item_screen_controller.dart';
import 'restaurant_outlets_orders_add_item_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsOrdersAddItemScreen
    extends BaseStatelessWidget<
        RestaurantOutletsOrdersAddItemScreenController,
        RestaurantOutletsOrdersAddItemScreenCubit,RestaurantOutletsOrdersAddItemScreenState> {

  RestaurantOutletsOrdersAddItemScreen({Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsOrdersAddItemScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          RestaurantOutletsOrdersAddItemScreenCubit,
          RestaurantOutletsOrdersAddItemScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              leading: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.chevron_left, size: 35,),
              ),
              titleSpacing: 0,
              title: Text("Select item", style: TextStyle(
                  fontWeight: Fonts.f700,
                  fontSize: Fonts.fontSize20
              ),),
            ),
            body: Container(
              padding: edge_insets_16,
              child: Column(
                children: [
                  Container(
                    child: TextField(
                      cursorColor: AppColors.bgPrimary,
                      decoration: InputDecoration(
                          prefixIconConstraints: const BoxConstraints(
                              minWidth: 50
                          ),
                          prefixIcon: Icon(Icons.search),
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
                    ),
                  ),
                  SizedBox(height: 28,),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text("Starter",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: Fonts.f600,
                          fontSize: Fonts.fontSize18
                      ),),
                  ),
                  const SizedBox(height: 8,),
                  Wrap(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2.3,
                        padding: edge_insets_16,
                        decoration: BoxDecoration(
                            border: borders.b_1px_grey2,
                            borderRadius: borderRadius.br_10
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset('images/flowers.png', height: 56, width: 56,),
                            ),
                            const SizedBox(height: 4,),
                            const Text("data", style: TextStyle(
                                fontSize: Fonts.fontSize16
                            ),),
                            const SizedBox(height: 4,),
                            const Text("₹ 120", style: TextStyle(
                                fontWeight: Fonts.f600,
                                fontSize: Fonts.fontSize16
                            ),),
                            const SizedBox(height: 12,),
                            TextButton.icon(
                                style: TextButton.styleFrom(
                                    foregroundColor: AppColors.orange,
                                    backgroundColor: AppColors.orange,
                                    shape: RoundedRectangleBorder(borderRadius: borderRadius.br_5),
                                    padding: edge_insets_x_16
                                ),
                                onPressed: (){},
                                icon: const Icon(Icons.add, color: AppColors.white,),
                                label: const Text("Add", style: TextStyle(
                                    fontWeight: Fonts.f600,
                                    color: AppColors.white
                                ),)
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 16,),
                      Container(
                        width: MediaQuery.of(context).size.width/2.3,
                        padding: edge_insets_16,
                        decoration: BoxDecoration(
                            border: borders.b_1px_grey2,
                            borderRadius: borderRadius.br_10
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset('images/flowers.png', height: 56, width: 56,),
                            ),
                            const SizedBox(height: 4,),
                            const Text("data", style: TextStyle(
                                fontSize: Fonts.fontSize16
                            ),),
                            const SizedBox(height: 4,),
                            const Text("₹ 120", style: TextStyle(
                                fontWeight: Fonts.f600,
                                fontSize: Fonts.fontSize16
                            ),),
                            SizedBox(height: 12,),
                            Row(
                              // mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 35,
                                  child: IconButton(
                                    style: IconButton.styleFrom(
                                        shape: RoundedRectangleBorder(borderRadius: borderRadius.br_5),
                                        side: const BorderSide(color: AppColors.orange),
                                        padding: edge_insets_0
                                    ),
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.remove,
                                      color: AppColors.orange,
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    margin: edge_insets_x_8,
                                    height: 40,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: borders.b_1px_grey05,
                                        borderRadius: borderRadius.br_5
                                    ),
                                    padding: edge_insets_y_8,
                                    child: const Text("2",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: Fonts.fontNunito,
                                        fontSize: Fonts.fontSize14,
                                        fontWeight: Fonts.f700,
                                      ),),
                                  ),
                                ),
                                Container(
                                  width: 35,
                                  child: IconButton(
                                    style: IconButton.styleFrom(
                                        shape: RoundedRectangleBorder(borderRadius: borderRadius.br_5),
                                        side: const BorderSide(color: AppColors.orange),
                                        padding: edge_insets_0
                                    ),
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      color: AppColors.orange,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            bottomNavigationBar: SizedBox(
              height: 120,
              child: Row(
                children: [
                  SizedBox(width: 8,),
                  Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                            padding: edge_insets_y_12,
                            side: BorderSide(color: AppColors.orange),
                            foregroundColor: AppColors.orange,
                            shape: RoundedRectangleBorder(borderRadius: borderRadius.br_5)
                        ),
                        onPressed: (){},
                        child: Text("Cancel", style: TextStyle(
                            fontSize: Fonts.fontSize16,
                            color: AppColors.orange
                        ),),
                      )
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: AppColors.orange,
                            foregroundColor: AppColors.orange,
                            padding: edge_insets_y_12,
                            shape: RoundedRectangleBorder(borderRadius: borderRadius.br_5)
                        ),
                        onPressed: (){},
                        child: Text("Checkout", style: TextStyle(
                            fontSize: Fonts.fontSize16,
                            color: AppColors.white
                        ),),
                      )
                  ),
                  SizedBox(width: 8,)
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsOrdersAddItemScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsOrdersAddItemScreenCubit cubit = RestaurantOutletsOrdersAddItemScreenCubit(
        context: context);
    controller?.cubit = cubit;
    return cubit;
  }

}
