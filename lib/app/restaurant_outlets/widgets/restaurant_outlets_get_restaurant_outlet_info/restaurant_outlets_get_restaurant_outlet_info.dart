import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/app_date_time_utils.dart';
import '../../../orders/utils/order_utils.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '../restaurant_outlets_print_bill_widget/restaurant_outlets_print_bill_widget.dart';
import 'restaurant_outlets_get_restaurant_outlet_info_controller.dart';
import 'restaurant_outlets_get_restaurant_outlet_info_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsGetRestaurantOutletInfo
    extends BaseStatelessWidget<
        RestaurantOutletsGetRestaurantOutletInfoController,
        RestaurantOutletsGetRestaurantOutletInfoCubit,
        RestaurantOutletsGetRestaurantOutletInfoState> {

  const RestaurantOutletsGetRestaurantOutletInfo(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsGetRestaurantOutletInfoCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          RestaurantOutletsGetRestaurantOutletInfoCubit,
          RestaurantOutletsGetRestaurantOutletInfoState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container();
        },
      ),
    );
  }

  @override
  RestaurantOutletsGetRestaurantOutletInfoCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsGetRestaurantOutletInfoCubit cubit = RestaurantOutletsGetRestaurantOutletInfoCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
