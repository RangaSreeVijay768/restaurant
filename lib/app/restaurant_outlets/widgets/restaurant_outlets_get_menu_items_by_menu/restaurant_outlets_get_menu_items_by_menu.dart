import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/core/models/menus/menu.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_update_menu_item_modal/restaurant_outlets_update_menu_item_modal.dart';
import 'package:restaurant_pos/app/themes/app_colors.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:restaurant_pos/app/themes/fonts.dart';
import 'package:restaurant_pos/app/upload_file/widgets/get_image_by_entity_id_and_image_type/get_image_by_entity_id_and_image_type.dart';
import '../restaurant_outlets_disable_menu_item/restaurant_outlets_disable_menu_item.dart';
import '../restaurant_outlets_menu_popup_menu_button/restaurant_outlets_menu_popup_menu_button.dart';
import 'restaurant_outlets_get_menu_items_by_menu_controller.dart';
import 'restaurant_outlets_get_menu_items_by_menu_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsGetMenuItemsByMenu extends BaseStatelessWidget<
    RestaurantOutletsGetMenuItemsByMenuController,
    RestaurantOutletsGetMenuItemsByMenuCubit,
    RestaurantOutletsGetMenuItemsByMenuState> {
  Menu menu;
  String? status;

  RestaurantOutletsGetMenuItemsByMenu(
      {required this.menu,
      this.status,
      Key? key,
      super.controller,
      super.onStateChanged})
      : super(key: key);
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsGetMenuItemsByMenuCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsGetMenuItemsByMenuCubit,
          RestaurantOutletsGetMenuItemsByMenuState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);

          return state.getMenuItemsByMenuResponse != null
              ? state.getMenuItemsByMenuResponse!.isNotEmpty
                  ? Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Starter",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: Fonts.f600,
                                fontSize: Fonts.fontSize18),
                          ),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        Expanded(
                          child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 1 / 1.4,
                                      crossAxisSpacing: 16,
                                      mainAxisSpacing: 16),
                              physics: const AlwaysScrollableScrollPhysics(),
                              itemCount:
                                  state.getMenuItemsByMenuResponse!.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.3,
                                      padding: edge_insets_16,
                                      decoration: BoxDecoration(
                                          border: borders.b_1px_grey2,
                                          borderRadius: borderRadius.br_10),
                                      child: Column(
                                        children: [
                                          Container(
                                            child: GetImageByEntityIdAndImageType(
                                                entity: state
                                                    .getMenuItemsByMenuResponse![
                                                        index]
                                                    .menuItemId!,
                                                alt: state
                                                    .getMenuItemsByMenuResponse![
                                                        index]
                                                    .menuItemName!,
                                                size: 40,
                                                imageType:
                                                    'MENU_ITEM_PROFILE_PIC'),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            state
                                                .getMenuItemsByMenuResponse![
                                                    index]
                                                .menuItemName
                                                .toString(),
                                            style: const TextStyle(
                                                fontSize: Fonts.fontSize16),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "₹ ${state.getMenuItemsByMenuResponse![index].price}",
                                            style: const TextStyle(
                                                fontWeight: Fonts.f600,
                                                fontSize: Fonts.fontSize16),
                                          ),
                                        ],
                                      ),
                                    ),
                                    RestaurantOutletsMenuPopupMenuButton(
                                        menu: menu,
                                        menuItem: state
                                            .getMenuItemsByMenuResponse![index],
                                        onModalClosed: (data) {
                                          if (data.status ==
                                              BooleanStatus.success) {
                                            getCubit(context)
                                                .getMenuItemsByMenu(
                                                    getCubit(context)
                                                        .createRequestData());
                                          }
                                        })
                                  ],
                                );
                              }),
                        )
                      ],
                    )
                  : Center(
                      child: Text("No items"),
                    )
              : const Center(
                  child: Text("loading items"),
                );
        },
      ),
    );
  }

  @override
  RestaurantOutletsGetMenuItemsByMenuCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsGetMenuItemsByMenuCubit cubit =
        RestaurantOutletsGetMenuItemsByMenuCubit(
            menu: menu, status: status, context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}

class RestaurantOutletsGetMenuItemsByMenuWithSelect
    extends RestaurantOutletsGetMenuItemsByMenu {
  RestaurantOutletsGetMenuItemsByMenuWithSelect(
      {super.key,
      super.status,
      required super.menu,
      super.controller,
      super.onStateChanged});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsGetMenuItemsByMenuCubit>(
        create: (context) => createCubitAndAssignToController(context),
        child: BlocConsumer<RestaurantOutletsGetMenuItemsByMenuCubit,
            RestaurantOutletsGetMenuItemsByMenuState>(
          listener: (context, state) {
            if (onStateChanged != null) {
              onStateChanged!(state);
            }
          },
          builder: (context, state) {
            initializeController(context);
            return state.getMenuItemsByMenuResponse != null
                ? state.getMenuItemsByMenuResponse!.isNotEmpty
                    ? Container(
                        margin: edge_insets_x_16,
                        child: GridView.builder(

                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 1 / 1.6,
                                    crossAxisSpacing: 16,
                                    mainAxisSpacing: 16),
                            itemCount: state.getMenuItemsByMenuResponse!.length,
                            itemBuilder: (context, index) {
                              return Stack(
                                children: [
                                  Container(
                                    padding: edge_insets_8,
                                    width:
                                        MediaQuery.of(context).size.width / 2.3,
                                    decoration: BoxDecoration(
                                        border: borders.b_1px_grey2,
                                        borderRadius: borderRadius.br_10),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: GetImageByEntityIdAndImageType(
                                              entity: state
                                                  .getMenuItemsByMenuResponse![
                                                      index]
                                                  .menuItemId!,
                                              alt: state
                                                  .getMenuItemsByMenuResponse![
                                                      index]
                                                  .menuItemName!,
                                              size: 40,
                                              imageType:
                                                  'MENU_ITEM_PROFILE_PIC'),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          state
                                              .getMenuItemsByMenuResponse![
                                                  index]
                                              .menuItemName
                                              .toString(),
                                          style: const TextStyle(
                                              fontSize: Fonts.fontSize16),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          state
                                              .getMenuItemsByMenuResponse![
                                                  index]
                                              .price
                                              .toString(),
                                          style: const TextStyle(
                                              fontWeight: Fonts.f600,
                                              fontSize: Fonts.fontSize16),
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        state.menuItemCountMap[state
                                                        .getMenuItemsByMenuResponse![
                                                    index]] ==
                                                0
                                            ? TextButton.icon(
                                                style: TextButton.styleFrom(
                                                    foregroundColor:
                                                        AppColors.orange,
                                                    backgroundColor:
                                                        AppColors.orange,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                borderRadius
                                                                    .br_5),
                                                    padding: edge_insets_x_16),
                                                onPressed: () {
                                                  getCubit(context)
                                                      .increaseMenuItemCount(
                                                          state.getMenuItemsByMenuResponse![
                                                              index],
                                                          1);
                                                },
                                                icon: const Icon(
                                                  Icons.add,
                                                  color: AppColors.white,
                                                ),
                                                label: const Text(
                                                  "Add",
                                                  style: TextStyle(
                                                      fontWeight: Fonts.f600,
                                                      color: AppColors.white),
                                                ))
                                            : Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width: 35,
                                                    child: IconButton(
                                                      style: IconButton.styleFrom(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  borderRadius
                                                                      .br_5),
                                                          side: const BorderSide(
                                                              color: AppColors
                                                                  .orange),
                                                          padding:
                                                              edge_insets_0),
                                                      onPressed: () {
                                                        if (state.menuItemCountMap[
                                                                state.getMenuItemsByMenuResponse![
                                                                    index]]! >
                                                            0) {
                                                          getCubit(context)
                                                              .increaseMenuItemCount(
                                                                  state.getMenuItemsByMenuResponse![
                                                                      index],
                                                                  -1);
                                                        }
                                                      },
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
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                          border: borders
                                                              .b_1px_grey05,
                                                          borderRadius:
                                                              borderRadius
                                                                  .br_5),
                                                      padding: edge_insets_y_8,
                                                      child: Text(
                                                        (state.menuItemCountMap[
                                                                    state.getMenuItemsByMenuResponse![
                                                                        index]] ??
                                                                0)
                                                            .toString(),
                                                        style: const TextStyle(
                                                          color: Colors.black,
                                                          fontFamily:
                                                              Fonts.fontNunito,
                                                          fontSize:
                                                              Fonts.fontSize14,
                                                          fontWeight:
                                                              Fonts.f700,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 35,
                                                    child: IconButton(
                                                      style: IconButton.styleFrom(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  borderRadius
                                                                      .br_5),
                                                          side: const BorderSide(
                                                              color: AppColors
                                                                  .orange),
                                                          padding:
                                                              edge_insets_0),
                                                      onPressed: () {
                                                        getCubit(context)
                                                            .increaseMenuItemCount(
                                                                state.getMenuItemsByMenuResponse![
                                                                    index],
                                                                1);
                                                      },
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
                              );
                            }),
                      )
                    : Center(
                        child: Text("No items"),
                      )
                : Center(
                    child: Text("Loading items"),
                  );
          },
        ));
  }
}

class RestaurantOutletsGetMenuItemsByMenuEmptyWidget
    extends RestaurantOutletsGetMenuItemsByMenu {
  RestaurantOutletsGetMenuItemsByMenuEmptyWidget(
      {super.key,
        super.status,
        required super.menu,
        super.controller,
        super.onStateChanged});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsGetMenuItemsByMenuCubit>(
        create: (context) => createCubitAndAssignToController(context),
        child: BlocConsumer<RestaurantOutletsGetMenuItemsByMenuCubit,
            RestaurantOutletsGetMenuItemsByMenuState>(
          listener: (context, state) {
            if (onStateChanged != null) {
              onStateChanged!(state);
            }
          },
          builder: (context, state) {
            initializeController(context);
            return Container();
            },
        ));
  }
}
