import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import '../../../themes/borders.dart';
import '../../../themes/edge_insets.dart';
import '../restaurant_outlets_add_restaurant_modal/restaurant_outlets_add_restaurant_modal.dart';
import 'restaurant_outlets_get_all_restaurant_outlets_controller.dart';
import 'restaurant_outlets_get_all_restaurant_outlets_cubit.dart';

class RestaurantOutletsGetAllRestaurantOutlets extends BaseStatelessWidget<
    RestaurantOutletsGetAllRestaurantOutletsController,
    RestaurantOutletsGetAllRestaurantOutletsCubit,
    RestaurantOutletsGetAllRestaurantOutletsState> {
  RestaurantOutletsGetAllRestaurantOutlets({Key? key, super.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsGetAllRestaurantOutletsCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsGetAllRestaurantOutletsCubit,
          RestaurantOutletsGetAllRestaurantOutletsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Stack(
            alignment: Alignment.bottomRight,
            children: [
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(border: borders.bt_1px_grey2),
                    padding: edge_insets_x_16_y_24,
                    child: state.getAllRestaurantOutletsResponse != null
                        ? ListView.builder(
                        itemCount:
                        state.getAllRestaurantOutletsResponse!.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: edge_insets_b_16,
                            child: InkWell(
                              onTap: () {
                                context.push(
                                    '/restaurant/${state.getAllRestaurantOutletsResponse![index].restaurantOutletId}');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: borders.b_1px_grey05,
                                    borderRadius: borderRadius.br_10),
                                padding: edge_insets_x_8_y_12,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: edge_insets_r_8,
                                          width: 24,
                                          height: 24,
                                          child: CircleAvatar(
                                            backgroundColor:
                                            Colors.brown.shade800,
                                            child: const Text('AH'),
                                          ),
                                        ),
                                        Text(state.getAllRestaurantOutletsResponse![index]
                                            .restaurantOutletName.toString())
                                      ],
                                    ),
                                    Icon(Icons.chevron_right),
                                  ],
                                ),
                              ),
                            ),
                          );
                        })
                        : const Center(
                            child: Text('Loading restaurants'),
                          ),
                  )),
              RestaurantOutletsAddRestaurantModal(onModalClosed: (modalData) {
                getCubit(context).getAllRestaurantOutlets(
                    getCubit(context).createRequestData());
              }),
            ],
          );
          // return SizedBox.shrink();
        },
      ),
    );
  }

  @override
  RestaurantOutletsGetAllRestaurantOutletsCubit
      createCubitAndAssignToController(BuildContext context) {
    RestaurantOutletsGetAllRestaurantOutletsCubit cubit =
        RestaurantOutletsGetAllRestaurantOutletsCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
