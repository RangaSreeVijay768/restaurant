import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/ads/widgets/ads_banner_ad_widget/ads_banner_ad_widget.dart';
import '../../../themes/buttons.dart';
import '../../widgets/restaurant_outlets_side_menu/restaurant_outlets_side_menu.dart';
import '../restaurant_outlets_analytics_screen/restaurant_outlets_analytics_screen.dart';
import '/app/core/widgets/base_stateless_widget.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import '../../../themes/shadows.dart';
import '../restaurant_outlets_menu_screen/restaurant_outlets_menu_screen.dart';
import '../restaurant_outlets_orders_screen/restaurant_outlets_orders_screen.dart';
import 'restaurant_outlets_main_screen_controller.dart';
import 'restaurant_outlets_main_screen_cubit.dart';

class RestaurantOutletsMainScreen extends BaseStatelessWidget<
    RestaurantOutletsMainScreenController,
    RestaurantOutletsMainScreenCubit,
    RestaurantOutletsMainScreenState> {
  String restaurantOutletId;
String? selectedWidget;
  RestaurantOutletsMainScreen(
      {required this.restaurantOutletId, this.selectedWidget,Key? key, super.controller})
      : super(key: key) {
    tabWidgets = {
      'ORDERS':
          RestaurantOutletsOrdersScreen(restaurantOutletId: restaurantOutletId),
      'MENU': RestaurantOutletsMenuScreen(
        restaurantOutletId: restaurantOutletId,
      ),
      'ANALYTICS': RestaurantOutletsAnalyticsScreen(),
    };
  }

  late final Map<String, Widget> tabWidgets;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsMainScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsMainScreenCubit,
          RestaurantOutletsMainScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          Widget orders() {
            return TextButton(
              style: Buttons.sideMenuButton,
              onPressed: () {
                getCubit(context).selectWidget("ORDERS");
                getCubit(context).logEvent(name: 'ORDERS');
                _key.currentState!.closeDrawer();
              },
              child: const Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Icon(
                    Icons.fastfood_outlined,
                    color: AppColors.textHeading,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Orders",
                    style: TextStyle(
                        color: AppColors.textHeading,
                        fontSize: Fonts.fontSize16,
                        fontWeight: Fonts.f400),
                  )
                ],
              ),
            );
          }

          Widget menu() {
            return TextButton(
              style: Buttons.sideMenuButton,
              onPressed: () {
                getCubit(context).selectWidget("MENU");
                getCubit(context).logEvent(name: 'MENU');
                _key.currentState!.closeDrawer();
              },
              child: const Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Icon(
                    Icons.restaurant_menu_outlined,
                    color: AppColors.textHeading,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Menu",
                    style: TextStyle(
                        color: AppColors.textHeading,
                        fontSize: Fonts.fontSize16,
                        fontWeight: Fonts.f400),
                  )
                ],
              ),
            );
          }

          Widget analytics() {
            return TextButton(
              style: Buttons.sideMenuButton,
              onPressed: () {
                getCubit(context).selectWidget("ANALYTICS");
                getCubit(context).logEvent(name: 'ANALYTICS');
                _key.currentState!.closeDrawer();
              },
              child: const Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Icon(
                    Icons.analytics_outlined,
                    color: AppColors.textHeading,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Analytics",
                    style: TextStyle(
                        color: AppColors.textHeading,
                        fontSize: Fonts.fontSize16,
                        fontWeight: Fonts.f400),
                  )
                ],
              ),
            );
          }

          return state.getRestaurantOutletResponse != null
              ? Scaffold(
                  key: _key,
                  drawer: RestaurantOutletsSideMenu(
                      restaurantOutlet: state.getRestaurantOutletResponse!,
                      orders: orders(),
                      menu: menu(),
                      analytics: analytics()),
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              _key.currentState!.openDrawer();
                              getCubit(context).logEvent(name: 'main_screen');
                            },
                            icon: Icon(Icons.menu)),
                        Text(
                          state.getRestaurantOutletResponse!
                              .restaurantOutletName!,
                          style: const TextStyle(
                              fontSize: Fonts.fontSize20,
                              fontWeight: Fonts.f700),
                        ),
                        IconButton(
                            onPressed: () {
                              getCubit(context).logEvent(name: 'main_screen');
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.swap_horiz)),
                      ],
                    ),
                  ),
                  body: tabWidgets[state.selectedWidgetName],
                  bottomNavigationBar: Container(
                    decoration: const BoxDecoration(
                        color: AppColors.white,
                        boxShadow: [shadows.bs_primary]),
                    alignment: Alignment.center,
                    height: 115,
                    padding: edge_insets_x_16,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              splashColor: AppColors.orange,
                              onTap: () {
                                getCubit(context).selectWidget('ORDERS');
                                getCubit(context).logEvent(name: 'ORDERS');
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 3.5,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Icon(
                                      Icons.fastfood_outlined,
                                      color:
                                          state.selectedWidgetName == 'ORDERS'
                                              ? AppColors.orange
                                              : AppColors.grey4,
                                    ),
                                    Text(
                                      "Orders",
                                      style: TextStyle(
                                          color: state.selectedWidgetName ==
                                                  'ORDERS'
                                              ? AppColors.orange
                                              : AppColors.grey4),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: AppColors.orange,
                              onTap: () {
                                getCubit(context).selectWidget('MENU');
                                getCubit(context).logEvent(name: 'MENU');
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 3.5,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Icon(
                                      Icons.restaurant_menu,
                                      color: state.selectedWidgetName == 'MENU'
                                          ? AppColors.orange
                                          : AppColors.grey4,
                                    ),
                                    Text(
                                      "Menu",
                                      style: TextStyle(
                                          color:
                                              state.selectedWidgetName == 'MENU'
                                                  ? AppColors.orange
                                                  : AppColors.grey4),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: AppColors.orange,
                              onTap: () {
                                getCubit(context).selectWidget("ANALYTICS");
                                getCubit(context).logEvent(name: 'ANALYTICS');
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 3.5,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Icon(
                                      Icons.analytics_outlined,
                                      color: state.selectedWidgetName ==
                                              'ANALYTICS'
                                          ? AppColors.orange
                                          : AppColors.grey4,
                                    ),
                                    Text(
                                      "Analytics",
                                      style: TextStyle(
                                          color: state.selectedWidgetName ==
                                                  'ANALYTICS'
                                              ? AppColors.orange
                                              : AppColors.grey4),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        AdsBannerAdWidget(),
                      ],
                    ),
                  ),
                )
              : Scaffold();
        },
      ),
    );
  }

  @override
  RestaurantOutletsMainScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsMainScreenCubit cubit = RestaurantOutletsMainScreenCubit(
        context: context, restaurantOutletId: restaurantOutletId);
    controller?.cubit = cubit;
    return cubit;
  }
}

class RestaurantOutletsMainScreenEmptyWidget
    extends RestaurantOutletsMainScreen {
  RestaurantOutletsMainScreenEmptyWidget(
      {super.key, required super.restaurantOutletId, super.controller});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsMainScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsMainScreenCubit,
          RestaurantOutletsMainScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          initializeController(context);
          return Container();
        },
      ),
    );
  }
}
