import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_pos/app/ads/widgets/ads_banner_ad_widget/ads_banner_ad_widget.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_add_restaurant_modal/restaurant_outlets_add_restaurant_modal.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_get_restaurant_outlet_infos_by_user_account/restaurant_outlets_get_restaurant_outlet_infos_by_user_account.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_get_restaurant_outlet_infos_by_user_account/restaurant_outlets_get_restaurant_outlet_infos_by_user_account_controller.dart';
import 'package:restaurant_pos/app/themes/shadows.dart';
import 'package:restaurant_pos/app/user_accounts/widgets/user_accounts_logout_user/user_accounts_logout_user.dart';
import '../../../themes/app_colors.dart';
import '../../widgets/restaurant_outlets_side_menu/restaurant_outlets_side_menu.dart';
import '/app/core/widgets/base_stateless_widget.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import 'restaurant_outlets_get_all_restaurant_outlets_screen_controller.dart';
import 'restaurant_outlets_get_all_restaurant_outlets_screen_cubit.dart';

class RestaurantOutletsGetAllRestaurantOutletsScreen
    extends BaseStatelessWidget<
        RestaurantOutletsGetAllRestaurantOutletsScreenController,
        RestaurantOutletsGetAllRestaurantOutletsScreenCubit,
        RestaurantOutletsGetAllRestaurantOutletsScreenState> {
  RestaurantOutletsGetAllRestaurantOutletsScreen({Key? key, super.controller})
      : super(key: key);
  RestaurantOutletsGetRestaurantOutletInfosByUserAccountController
      restaurantOutletInfosByUserAccountController =
      RestaurantOutletsGetRestaurantOutletInfosByUserAccountController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsGetAllRestaurantOutletsScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsGetAllRestaurantOutletsScreenCubit,
          RestaurantOutletsGetAllRestaurantOutletsScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                title: Row(
                  children: [
                    Container(
                        padding: edge_insets_y_12,
                        child: Text(
                          "Select Restaurant",
                          style: TextStyle(
                              fontSize: Fonts.fontSize20, fontWeight: Fonts.f700),
                        )
                    ),
                    
                  ],
                ),
              ),
              body: RestaurantOutletsGetRestaurantOutletInfosByUserAccount(
                onModalClosed: (modalData) async {
                  if(modalData.status == BooleanStatus.success){
                    await  restaurantOutletInfosByUserAccountController
                        .getChildCubit()
                        .getRestaurantOutletInfosByUserAccount(
                        restaurantOutletInfosByUserAccountController
                            .getChildCubit()
                            .createRequestData());
                  }
                },
                controller: restaurantOutletInfosByUserAccountController,
              ),
            floatingActionButton: Container(
              child: RestaurantOutletsAddRestaurantModal(
                  onModalClosed: (modalData) async {
                    if(modalData.status == BooleanStatus.success){
                      await  restaurantOutletInfosByUserAccountController
                          .getChildCubit()
                          .getRestaurantOutletInfosByUserAccount(
                          restaurantOutletInfosByUserAccountController
                              .getChildCubit()
                              .createRequestData());
                    }
                  }),
            ),
            bottomNavigationBar: AdsBannerAdWidget()
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsGetAllRestaurantOutletsScreenCubit
      createCubitAndAssignToController(BuildContext context) {
    RestaurantOutletsGetAllRestaurantOutletsScreenCubit cubit =
        RestaurantOutletsGetAllRestaurantOutletsScreenCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
