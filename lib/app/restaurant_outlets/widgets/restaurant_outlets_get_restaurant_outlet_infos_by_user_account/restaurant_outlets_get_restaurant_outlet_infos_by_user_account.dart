import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_pos/app/core/logger/log.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:restaurant_pos/app/upload_file/widgets/get_image_by_entity_id_and_image_type/get_image_by_entity_id_and_image_type.dart';

import '../restaurant_outlets_no_restaurants_widget/restaurant_outlets_no_restaurants_widget.dart';
import '/app/core/widgets/base_stateless_widget.dart';
import 'restaurant_outlets_get_restaurant_outlet_infos_by_user_account_controller.dart';
import 'restaurant_outlets_get_restaurant_outlet_infos_by_user_account_cubit.dart';

class RestaurantOutletsGetRestaurantOutletInfosByUserAccount
    extends BaseStatelessWidget<
        RestaurantOutletsGetRestaurantOutletInfosByUserAccountController,
        RestaurantOutletsGetRestaurantOutletInfosByUserAccountCubit,
        RestaurantOutletsGetRestaurantOutletInfosByUserAccountState> {
  String? status;
  dynamic onModalClosed;

  RestaurantOutletsGetRestaurantOutletInfosByUserAccount(
      {String? status, Key? key, super.controller, this.onModalClosed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<
        RestaurantOutletsGetRestaurantOutletInfosByUserAccountCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          RestaurantOutletsGetRestaurantOutletInfosByUserAccountCubit,
          RestaurantOutletsGetRestaurantOutletInfosByUserAccountState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            decoration: BoxDecoration(border: borders.bt_1px_grey2),
            padding: edge_insets_x_16_y_24,
            child: state.getRestaurantOutletInfosByUserAccountResponse != null
                ? state.getRestaurantOutletInfosByUserAccountResponse!
                        .isNotEmpty
                    ? ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: state
                            .getRestaurantOutletInfosByUserAccountResponse!
                            .length,
                        itemBuilder: (context, index) {
                          final restaurantOutletInfo = state
                                  .getRestaurantOutletInfosByUserAccountResponse![
                              index];
                          return Container(
                            margin: edge_insets_b_16,
                            child: InkWell(
                              onTap: () {
                                context.push(
                                    '/restaurant/${restaurantOutletInfo.restaurantOutlet!.restaurantOutletId}');
                                getCubit(context).logEvent(
                                    name:
                                        'restaurant_outlet_infos_by_user_account');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: borders.b_1px_grey05,
                                    borderRadius: borderRadius.br_10),
                                padding: edge_insets_x_8_y_12,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: edge_insets_r_8,
                                          child: GetImageByEntityIdAndImageType(
                                            size: 24,
                                            entity: restaurantOutletInfo
                                                .restaurantOutlet!
                                                .restaurantOutletId!,
                                            imageType:
                                                'RESTAURANT_OUTLET_PROFILE_PIC',
                                            alt: restaurantOutletInfo
                                                    .restaurantOutlet!
                                                    .restaurantOutletName ??
                                                'No Name',
                                          ),
                                        ),
                                        Text(restaurantOutletInfo
                                            .restaurantOutlet!
                                            .restaurantOutletName
                                            .toString())
                                      ],
                                    ),
                                    const Icon(Icons.chevron_right),
                                  ],
                                ),
                              ),
                            ),
                          );
                        })
                    : RestaurantOutletsNoRestaurantsWidget(onModalClosed: onModalClosed,)
                : const Center(
                    child: Text('Loading restaurants'),
                  ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsGetRestaurantOutletInfosByUserAccountCubit
      createCubitAndAssignToController(BuildContext context) {
    RestaurantOutletsGetRestaurantOutletInfosByUserAccountCubit cubit =
        RestaurantOutletsGetRestaurantOutletInfosByUserAccountCubit(
            status: status, context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}



class RestaurantOutletsGetRestaurantOutletInfosByUserAccountEmptyWidget extends RestaurantOutletsGetRestaurantOutletInfosByUserAccount{
  RestaurantOutletsGetRestaurantOutletInfosByUserAccountEmptyWidget(
      {String? status, Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context){
    return BlocProvider<RestaurantOutletsGetRestaurantOutletInfosByUserAccountCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsGetRestaurantOutletInfosByUserAccountCubit, RestaurantOutletsGetRestaurantOutletInfosByUserAccountState>(
        listener: (context, state){
          if(onStateChanged != null){
            onStateChanged!(state);
          }
        },
        builder: (context, state){
          initializeController(context);
          return Container();
        },
      ),
    );
  }
}
