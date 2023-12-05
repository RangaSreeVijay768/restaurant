import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/core/models/menus/menu_item.dart';
import 'package:restaurant_pos/app/core/widgets/core_image_picker/core_image_picker.dart';
import 'package:restaurant_pos/app/core/widgets/core_image_picker/core_image_picker_controller.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_update_menu_item_form/restaurant_outlets_update_menu_item_form.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_update_menu_item_form/restaurant_outlets_update_menu_item_form_controller.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:restaurant_pos/app/upload_file/repos/models/upload_file/upload_file_response.dart';
import 'package:restaurant_pos/app/upload_file/widgets/attach_image/attach_image.dart';
import 'package:restaurant_pos/app/upload_file/widgets/attach_image/attach_image_controller.dart';
import 'package:restaurant_pos/app/upload_file/widgets/get_image_by_entity_id_and_image_type/get_image_by_entity_id_and_image_type.dart';
import 'package:restaurant_pos/app/upload_file/widgets/upload_file/upload_file.dart';
import 'package:restaurant_pos/app/upload_file/widgets/upload_file/upload_file_controller.dart';

import '/app/core/modals/base_modal_content/base_modal_content_widget.dart';
import '../../../../core/models/modal_data.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/fonts.dart';
import '../../../../themes/shadows.dart';
import '../../restaurant_outlets_add_menu_dropdown/restaurant_outlets_add_menu_dropdown.dart';
import '../restaurant_outlets_update_menu_item_modal_data.dart';
import 'restaurant_outlets_update_menu_item_modal_content_controller.dart';
import 'restaurant_outlets_update_menu_item_modal_content_cubit.dart';

class RestaurantOutletsUpdateMenuItemModalContent extends BaseModalContent<
    RestaurantOutletsUpdateMenuItemModalContentController,
    RestaurantOutletsUpdateMenuItemModalContentCubit,
    RestaurantOutletsUpdateMenuItemModalContentState,
    RestaurantOutletsUpdateMenuItemModalContentState> {
  MenuItem menuItem;
  RestaurantOutletsUpdateMenuItemFormController
      restaurantOutletsUpdateMenuItemFormController =
      RestaurantOutletsUpdateMenuItemFormController();
  CoreImagePickerController coreImagePickerController =
      CoreImagePickerController();
  UploadFileController uploadFileController = UploadFileController();
  AttachImageController attachImageController = AttachImageController();

  RestaurantOutletsUpdateMenuItemModalContent(
      {required this.menuItem,
      Key? key,
      super.controller,
      super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsUpdateMenuItemModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsUpdateMenuItemModalContentCubit,
          RestaurantOutletsUpdateMenuItemModalContentState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            height: MediaQuery.of(context).size.height / 1.3,
            decoration: const BoxDecoration(
              borderRadius: borderRadius.br_t_20,
              color: AppColors.white,
            ),
            child: Column(
              children: [
                Container(
                  padding: edge_insets_16,
                  decoration: BoxDecoration(
                    border: borders.bb_1px_grey1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Add menu',
                        style: TextStyle(
                          color: AppColors.textHeading,
                          fontSize: Fonts.fontSize20,
                          fontWeight: Fonts.f700,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                            getCubit(context).logEvent(name: "add_menu");
                          },
                          style: IconButton.styleFrom(padding: edge_insets_0),
                          icon: const Icon(Icons.clear))
                    ],
                  ),
                ),
                Flexible(
                    child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      Column(
                        children: [
                          CoreImagePickerChangeImage(
                            entity: menuItem.menuItemId!,
                            imageType: 'MENU_ITEM_PROFILE_PIC',
                            alt: menuItem.menuItemName!,
                            size: 48,
                            onStateChanged: (coreImagePickerState) {
                              getCubit(context).emitState(state.copyWith(
                                  coreImagePickerState: coreImagePickerState));
                            },
                            controller: coreImagePickerController,
                          ),
                        ],
                      ),
                      UploadFile(
                        controller: uploadFileController,
                      ),
                      AttachImage(
                        controller: attachImageController,
                      ),
                      SizedBox(height: 16),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     SizedBox(
                      //       width: 16,
                      //     ),
                      //     RestaurantOutletsAddMenuDropdown(),
                      //   ],
                      // ),
                      RestaurantOutletsUpdateMenuItemForm(
                        menuItem: menuItem,
                        controller:
                            restaurantOutletsUpdateMenuItemFormController,
                        onStateChanged:
                            (restaurantOutletsUpdateMenuItemFormState) =>
                                getCubit(context).emitState(state.copyWith(
                                    restaurantOutletsUpdateMenuItemFormState:
                                        restaurantOutletsUpdateMenuItemFormState)),
                      ),
                      const SizedBox(
                        height: 300,
                      )
                    ],
                  ),
                )),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: edge_insets_y_12,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      border: borders.bt_1px_grey2,
                      boxShadow: const [shadows.bs_primary]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                          style: TextButton.styleFrom(
                              padding: edge_insets_x_80_y_16,
                              backgroundColor: AppColors.orange,
                              disabledBackgroundColor: AppColors.grey1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: borderRadius.br_5)),
                          onPressed: (state
                                          .restaurantOutletsUpdateMenuItemFormState
                                          ?.updateMenuItemStatus ==
                                      BooleanStatus.pending ||
                                  state.restaurantOutletsUpdateMenuItemFormState
                                          ?.formValid !=
                                      ControlStatus.valid)
                              ? null
                              : (state.coreImagePickerState
                                          ?.imagePickerStatus ==
                                      BooleanStatus.picked)
                                  ? () async {
                                      await restaurantOutletsUpdateMenuItemFormController
                                          .getChildCubit()
                                          .updateMenuItem(
                                              restaurantOutletsUpdateMenuItemFormController
                                                  .getChildCubit()
                                                  .createRequestData());
                                      getCubit(context)
                                          .logEvent(name: "update_menu");
                                      UploadFileResponse uploadFileResponse =
                                          await uploadFileController
                                              .getChildCubit()
                                              .uploadFile(uploadFileController
                                                  .getChildCubit()
                                                  .createRequestData(
                                                      file: File(state
                                                          .coreImagePickerState!
                                                          .xFile!
                                                          .path!)));
                                      await attachImageController
                                          .getChildCubit()
                                          .attachImage(attachImageController
                                              .getChildCubit()
                                              .createRequestData(
                                                  fileId: uploadFileResponse
                                                      .uploadedFileId,
                                                  imageType:
                                                      'MENU_ITEM_PROFILE_PIC',
                                                  entity: menuItem.menuItemId));
                                      closeModal(
                                          context,
                                          ModalData(
                                              status: BooleanStatus.success,
                                              data: state));
                                    }
                                  : () async {
                                      await restaurantOutletsUpdateMenuItemFormController
                                          .getChildCubit()
                                          .updateMenuItem(
                                              restaurantOutletsUpdateMenuItemFormController
                                                  .getChildCubit()
                                                  .createRequestData());
                                      getCubit(context)
                                          .logEvent(name: "update_menu");
                                      closeModal(
                                          context,
                                          ModalData(
                                              status: BooleanStatus.success,
                                              data: state));
                                    },
                          child: const Text(
                            "Update",
                            style: TextStyle(
                                fontWeight: Fonts.f600, color: AppColors.white),
                          ))
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsUpdateMenuItemModalContentCubit
      createCubitAndAssignToController(BuildContext context) {
    RestaurantOutletsUpdateMenuItemModalContentCubit cubit =
        RestaurantOutletsUpdateMenuItemModalContentCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
