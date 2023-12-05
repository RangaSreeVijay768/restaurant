import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_create_restaurant_outlet_form/restaurant_outlets_create_restaurant_outlet_form.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_create_restaurant_outlet_form/restaurant_outlets_create_restaurant_outlet_form_controller.dart';

import '../../../core/models/restaurants/restaurant_outlet.dart';
import '../../../core/widgets/core_image_picker/core_image_picker.dart';
import '../../../core/widgets/core_image_picker/core_image_picker_controller.dart';
import '../../../upload_file/repos/models/upload_file/upload_file_response.dart';
import '../../../upload_file/widgets/attach_image/attach_image.dart';
import '../../../upload_file/widgets/attach_image/attach_image_controller.dart';
import '../../../upload_file/widgets/upload_file/upload_file.dart';
import '../../../upload_file/widgets/upload_file/upload_file_controller.dart';
import '/app/core/widgets/base_stateless_widget.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/borders.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import '../../../themes/shadows.dart';
import 'restaurant_outlets_create_restaurant_outlet_controller.dart';
import 'restaurant_outlets_create_restaurant_outlet_cubit.dart';

class RestaurantOutletsCreateRestaurantOutlet extends BaseStatelessWidget<
    RestaurantOutletsCreateRestaurantOutletController,
    RestaurantOutletsCreateRestaurantOutletCubit,
    RestaurantOutletsCreateRestaurantOutletState> {

  RestaurantOutletsCreateRestaurantOutlet(
      {
      Key? key,
      super.controller,
      this.onRestaurantOutletCreated})
      : super(key: key);

  Function(String)? onRestaurantOutletCreated;
  RestaurantOutletsCreateRestaurantOutletFormController
      restaurantOutletsCreateRestaurantOutletFormController =
      RestaurantOutletsCreateRestaurantOutletFormController();
  CoreImagePickerController coreImagePickerController =
  CoreImagePickerController();
  AttachImageController attachImageController = AttachImageController();
  UploadFileController uploadFileController = UploadFileController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsCreateRestaurantOutletCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsCreateRestaurantOutletCubit,
          RestaurantOutletsCreateRestaurantOutletState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Column(
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
                      'Add restaurant',
                      style: TextStyle(
                        color: AppColors.textHeading,
                        fontSize: Fonts.fontSize20,
                        fontWeight: Fonts.f700,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
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
                        const SizedBox(
                          height: 24,
                        ),
                        CoreImagePicker(
                          onStateChanged: (coreImagePickerState) {
                            getCubit(context).emitState(state.copyWith(
                                coreImagePickerState: coreImagePickerState));
                          },
                          controller: coreImagePickerController,
                        ),
                        AttachImage(
                          controller: attachImageController,
                        ),
                        UploadFile(
                          controller: uploadFileController,
                        ),
                        SizedBox(height: 24,),
                        RestaurantOutletsCreateRestaurantOutletForm(
                          controller:
                          restaurantOutletsCreateRestaurantOutletFormController,
                          onStateChanged:
                              (restaurantOutletsCreateRestaurantOutletFormState) =>
                              getCubit(context).emitState(state.copyWith(
                                  restaurantOutletsCreateRestaurantOutletFormState:
                                  restaurantOutletsCreateRestaurantOutletFormState)),
                        ),
                        SizedBox(height: 300,)
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
                            disabledBackgroundColor: AppColors.grey06,
                            shape: RoundedRectangleBorder(
                                borderRadius: borderRadius.br_5)),
                        onPressed:
                        (state.restaurantOutletsCreateRestaurantOutletFormState
                            ?.createRestaurantOutletStatus ==
                            BooleanStatus.pending)
                            ? null
                            : (state.coreImagePickerState?.imagePickerStatus == BooleanStatus.picked)
                        ? () async {

                          String restaurantOutletId =
                          await restaurantOutletsCreateRestaurantOutletFormController
                              .getChildCubit()
                              .createRestaurantOutlet(
                              restaurantOutletsCreateRestaurantOutletFormController
                                  .getChildCubit()
                                  .createRequestData());
                          UploadFileResponse uploadFileResponse =
                          await uploadFileController
                              .getChildCubit()
                              .uploadFile(uploadFileController
                              .getChildCubit()
                              .createRequestData(
                              file: File(state
                                  .coreImagePickerState!
                                  .xFile!
                                  .path)));
                          await attachImageController
                              .getChildCubit()
                              .attachImage(attachImageController
                              .getChildCubit()
                              .createRequestData(
                              fileId: uploadFileResponse
                                  .uploadedFileId,
                              imageType:
                              'RESTAURANT_OUTLET_PROFILE_PIC',
                              entity: restaurantOutletId));
                          getCubit(context).logEvent(name: 'create_restaurant_outlet');
                          if (onRestaurantOutletCreated != null) {
                            onRestaurantOutletCreated!(
                                restaurantOutletId);
                          }
                        }
                        : () async {
                          String restaurantOutletId =
                          await restaurantOutletsCreateRestaurantOutletFormController
                              .getChildCubit()
                              .createRestaurantOutlet(
                              restaurantOutletsCreateRestaurantOutletFormController
                                  .getChildCubit()
                                  .createRequestData());
                          getCubit(context).logEvent(name: 'create_restaurant_outlet');
                          if (onRestaurantOutletCreated != null) {
                            onRestaurantOutletCreated!(
                                restaurantOutletId);
                          }
                        },
                        child: const Text(
                          "Add",
                          style: TextStyle(
                              fontWeight: Fonts.f600, color: AppColors.white),
                        ))
                  ],
                ),
              )

            ],
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsCreateRestaurantOutletCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsCreateRestaurantOutletCubit cubit =
        RestaurantOutletsCreateRestaurantOutletCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
