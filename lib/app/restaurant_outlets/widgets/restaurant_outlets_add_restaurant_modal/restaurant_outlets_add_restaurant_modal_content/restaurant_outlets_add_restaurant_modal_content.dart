import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/core/modals/base_modal_content/base_modal_content_widget.dart';

import '../../../../core/database/boolean_status.dart';
import '../../../../core/models/modal_data.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/borders.dart';
import '../../restaurant_outlets_create_restaurant_outlet/restaurant_outlets_create_restaurant_outlet.dart';
import 'restaurant_outlets_add_restaurant_modal_content_controller.dart';
import 'restaurant_outlets_add_restaurant_modal_content_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsAddRestaurantModalContent extends BaseModalContent<
    RestaurantOutletsAddRestaurantModalContentController,
    RestaurantOutletsAddRestaurantModalContentCubit,
    RestaurantOutletsAddRestaurantModalContentState,
    String> {
  RestaurantOutletsAddRestaurantModalContent(
      {Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsAddRestaurantModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsAddRestaurantModalContentCubit,
          RestaurantOutletsAddRestaurantModalContentState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            height: MediaQuery.of(context).size.height / 1.3,
            decoration: const BoxDecoration(
              borderRadius: borderRadius.br_t_20,
              color: AppColors.white,
            ),
            child: RestaurantOutletsCreateRestaurantOutlet(
              onRestaurantOutletCreated: (restaurantOutletId) {
                closeModal(
                    context,
                    ModalData(
                      status: BooleanStatus.success,
                      data: restaurantOutletId,
                    ));
              },
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsAddRestaurantModalContentCubit
      createCubitAndAssignToController(BuildContext context) {
    RestaurantOutletsAddRestaurantModalContentCubit cubit =
        RestaurantOutletsAddRestaurantModalContentCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
