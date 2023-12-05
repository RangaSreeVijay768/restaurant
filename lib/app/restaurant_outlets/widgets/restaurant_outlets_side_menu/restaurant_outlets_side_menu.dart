import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_pos/app/onboarding/screens/onboarding-welcome-screen/onboarding-welcome-screen.dart';
import 'package:restaurant_pos/app/restaurant_outlets/screens/restaurant_outlets_profile_screen/restaurant_outlets_profile_screen.dart';
import 'package:restaurant_pos/app/themes/app_colors.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/buttons.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:restaurant_pos/app/themes/fonts.dart';
import 'package:restaurant_pos/app/themes/shadows.dart';
import 'package:restaurant_pos/app/upload_file/widgets/get_image_by_entity_id_and_image_type/get_image_by_entity_id_and_image_type.dart';
import 'package:restaurant_pos/app/user_accounts/widgets/user_accounts_logout_user/user_accounts_logout_user.dart';

import '../../../core/models/restaurants/restaurant_outlet.dart';
import '/app/core/widgets/base_stateless_widget.dart';
import '../../../orders/utils/order_utils.dart';
import '../../screens/restaurant_outlets_printers_screen/restaurant_outlets_printers_screen.dart';
import 'restaurant_outlets_side_menu_controller.dart';
import 'restaurant_outlets_side_menu_cubit.dart';

class RestaurantOutletsSideMenu extends BaseStatelessWidget<
    RestaurantOutletsSideMenuController,
    RestaurantOutletsSideMenuCubit,
    RestaurantOutletsSideMenuState> {
  RestaurantOutlet restaurantOutlet;
  Widget orders;
  Widget menu;
  Widget analytics;

  RestaurantOutletsSideMenu(
      {Key? key,
      super.controller,
      super.onStateChanged,
      required this.restaurantOutlet,
      required this.orders,
      required this.menu,
      required this.analytics})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsSideMenuCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsSideMenuCubit,
          RestaurantOutletsSideMenuState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Drawer(
            shape: const RoundedRectangleBorder(),
            width: MediaQuery.sizeOf(context).width / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 48,
                          ),
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Container(
                                        decoration: BoxDecoration(
                                            border: borders.bb_1px_grey4),
                                        child: Column(
                                          children: [
                                            Text(
                                              restaurantOutlet
                                                  .restaurantOutletName!,
                                              style: TextStyle(
                                                  fontSize: Fonts.fontSize22,
                                                  fontWeight: Fonts.f500),
                                            ),
                                            Text(
                                              restaurantOutlet.address!,
                                              style: TextStyle(
                                                  fontWeight: Fonts.f400,
                                                  fontSize: Fonts.fontSize18),
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        Column(
                                          children: [
                                            Container(
                                              margin: edge_insets_x_16,
                                              child:
                                                  GetImageByEntityIdAndImageType(
                                                entity: restaurantOutlet
                                                    .restaurantOutletId!,
                                                imageType:
                                                    'RESTAURANT_OUTLET_PROFILE_PIC',
                                                alt: restaurantOutlet
                                                    .restaurantOutletName!,
                                                size: 150,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text("Close"))
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    );
                                  });
                            },
                            child: Container(
                              margin: edge_insets_x_16,
                              child: GetImageByEntityIdAndImageType(
                                entity: restaurantOutlet.restaurantOutletId!,
                                imageType: 'RESTAURANT_OUTLET_PROFILE_PIC',
                                alt: restaurantOutlet.restaurantOutletName!,
                                size: 50,
                              ),
                            ),
                          ),
                          Container(
                            margin: edge_insets_16,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  restaurantOutlet.restaurantOutletName!,
                                  style: const TextStyle(
                                      fontWeight: Fonts.f700,
                                      fontSize: Fonts.fontSize20),
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.swap_horiz),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration:
                                BoxDecoration(border: borders.bb_1px_grey05),
                          )
                        ],
                      ),
                      Container(
                        margin: edge_insets_x_16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 32,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  boxShadow: [shadows.bs_grey]),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: TextButton(
                                    style: Buttons.sideMenuButton,
                                    onPressed: () {
                                      context.pop();
                                      context.push(
                                          '/restaurant/${restaurantOutlet.restaurantOutletId}/profile');
                                    },
                                    child: const Row(
                                      children: [
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Icon(
                                          Icons.person,
                                          color: AppColors.textHeading,
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Text(
                                          "Profile",
                                          style: TextStyle(
                                              color: AppColors.textHeading,
                                              fontSize: Fonts.fontSize16,
                                              fontWeight: Fonts.f400),
                                        )
                                      ],
                                    ),
                                  ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  boxShadow: [shadows.bs_grey]),
                              child: Row(
                                children: [Expanded(child: orders)],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  boxShadow: [shadows.bs_grey]),
                              child: Row(
                                children: [Expanded(child: menu)],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  boxShadow: [shadows.bs_grey]),
                              child: Row(
                                children: [Expanded(child: analytics)],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  boxShadow: [shadows.bs_grey]),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: TextButton(
                                    style: Buttons.sideMenuButton,
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) =>
                                              RestaurantOutletsPrintersScreen()));
                                    },
                                    child: const Row(
                                      children: [
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Icon(
                                          Icons.print_outlined,
                                          color: AppColors.textHeading,
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Text(
                                          "Printer",
                                          style: TextStyle(
                                              color: AppColors.textHeading,
                                              fontSize: Fonts.fontSize16,
                                              fontWeight: Fonts.f400),
                                        )
                                      ],
                                    ),
                                  ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: edge_insets_b_24,
                  child: UserAccountsLogoutUser(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsSideMenuCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsSideMenuCubit cubit =
        RestaurantOutletsSideMenuCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
