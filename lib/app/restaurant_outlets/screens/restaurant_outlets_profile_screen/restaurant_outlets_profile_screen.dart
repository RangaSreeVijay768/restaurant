import 'dart:io';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../../core/database/boolean_status.dart';
import '../../../core/models/restaurants/restaurant_outlet.dart';
import '../../../core/widgets/core_image_picker/core_image_picker.dart';
import '../../../core/widgets/core_image_picker/core_image_picker_controller.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '../../../upload_file/repos/models/upload_file/upload_file_response.dart';
import '../../../upload_file/widgets/attach_image/attach_image.dart';
import '../../../upload_file/widgets/attach_image/attach_image_controller.dart';
import '../../../upload_file/widgets/upload_file/upload_file.dart';
import '../../../upload_file/widgets/upload_file/upload_file_controller.dart';
import '../../widgets/restaurant_outlets_get_restaurant_outlet_infos_by_user_account/restaurant_outlets_get_restaurant_outlet_infos_by_user_account.dart';
import '../../widgets/restaurant_outlets_get_restaurant_outlet_infos_by_user_account/restaurant_outlets_get_restaurant_outlet_infos_by_user_account_controller.dart';
import '../../widgets/restaurant_outlets_update_restaurant_outlet_form/restaurant_outlets_update_restaurant_outlet_form.dart';
import '../../widgets/restaurant_outlets_update_restaurant_outlet_form/restaurant_outlets_update_restaurant_outlet_form_controller.dart';
import '../restaurant_outlets_main_screen/restaurant_outlets_main_screen.dart';
import '../restaurant_outlets_main_screen/restaurant_outlets_main_screen_controller.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'restaurant_outlets_profile_screen_controller.dart';
import 'restaurant_outlets_profile_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class RestaurantOutletsProfileScreen
    extends BaseStatelessWidget<
        RestaurantOutletsProfileScreenController,
        RestaurantOutletsProfileScreenCubit,
        RestaurantOutletsProfileScreenState> {
  String restaurantOutletId;

  RestaurantOutletsProfileScreen(
      {Key? key, super.controller, super.onStateChanged, required this.restaurantOutletId}) : super(key: key);
  CoreImagePickerController coreImagePickerController =
  CoreImagePickerController();
  AttachImageController attachImageController = AttachImageController();
  UploadFileController uploadFileController = UploadFileController();
  RestaurantOutletsUpdateRestaurantOutletFormController
  restaurantOutletsUpdateRestaurantOutletFormController =
  RestaurantOutletsUpdateRestaurantOutletFormController();
  RestaurantOutletsGetRestaurantOutletInfosByUserAccountController
  restaurantOutletsGetRestaurantOutletInfosByUserAccountController =
  RestaurantOutletsGetRestaurantOutletInfosByUserAccountController();
  RestaurantOutletsMainScreenController restaurantOutletsMainScreenController =
  RestaurantOutletsMainScreenController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsProfileScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          RestaurantOutletsProfileScreenCubit,
          RestaurantOutletsProfileScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getRestaurantOutletResponse != null
          ? Scaffold(
            appBar: AppBar(
              title: Text("Edit Restaurant"),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  // GetImageByEntityIdAndImageType(
                  //   size: 48,
                  //   entity: restaurantOutletId,
                  //   imageType:
                  //   'RESTAURANT_OUTLET_PROFILE_PIC',
                  //   alt: restaurantName,
                  // ),
                  CoreImagePickerChangeImage(
                    entity: restaurantOutletId,
                    alt: state.getRestaurantOutletResponse!.restaurantOutletName!,
                    size: 48,
                    imageType: 'RESTAURANT_OUTLET_PROFILE_PIC',
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
                  RestaurantOutletsUpdateRestaurantOutletForm(
                    restaurantOutlet: state.getRestaurantOutletResponse!,
                    controller:
                    restaurantOutletsUpdateRestaurantOutletFormController,
                    onStateChanged:
                        (restaurantOutletsUpdateRestaurantOutletFormState) {
                      getCubit(context).emitState(state.copyWith(
                          restaurantOutletsUpdateRestaurantOutletFormState:
                          restaurantOutletsUpdateRestaurantOutletFormState));
                    },
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: AppColors.orange,
                          disabledBackgroundColor: AppColors.grey1,
                          shape: RoundedRectangleBorder(
                              borderRadius: borderRadius.br_5),
                          padding: edge_insets_x_49_y_12),
                      onPressed:
                      (state.restaurantOutletsUpdateRestaurantOutletFormState
                          ?.updateRestaurantOutletStatus ==
                          BooleanStatus.pending ||
                          state.restaurantOutletsUpdateRestaurantOutletFormState
                              ?.formValid !=
                              ControlStatus.valid)
                          ? null
                          : (state.coreImagePickerState?.imagePickerStatus == BooleanStatus.picked)
                      ? () async {
                        await restaurantOutletsUpdateRestaurantOutletFormController
                            .getChildCubit()
                            .updateRestaurantOutlet(
                            restaurantOutletsUpdateRestaurantOutletFormController
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
                        await restaurantOutletsGetRestaurantOutletInfosByUserAccountController
                            .getChildCubit()
                            .getRestaurantOutletInfosByUserAccount(
                            restaurantOutletsGetRestaurantOutletInfosByUserAccountController
                                .getChildCubit()
                                .createRequestData());
                        await restaurantOutletsMainScreenController
                            .getChildCubit()
                            .getRestaurantOutlet(
                            restaurantOutletsMainScreenController
                                .getChildCubit()
                                .createRequestData(restaurantOutletId: restaurantOutletId));
                      }
                      : () async {
                        await restaurantOutletsUpdateRestaurantOutletFormController
                            .getChildCubit()
                            .updateRestaurantOutlet(
                            restaurantOutletsUpdateRestaurantOutletFormController
                                .getChildCubit()
                                .createRequestData());
                        await restaurantOutletsGetRestaurantOutletInfosByUserAccountController
                            .getChildCubit()
                            .getRestaurantOutletInfosByUserAccount(
                            restaurantOutletsGetRestaurantOutletInfosByUserAccountController
                                .getChildCubit()
                                .createRequestData());
                        await restaurantOutletsMainScreenController
                            .getChildCubit()
                            .getRestaurantOutlet(
                            restaurantOutletsMainScreenController
                                .getChildCubit()
                                .createRequestData(restaurantOutletId: restaurantOutletId));
                      },
                      child: const Text(
                        "Save changes",
                        style: TextStyle(
                            fontWeight: Fonts.f500,
                            fontSize: Fonts.fontSize18,
                            color: AppColors.white),
                      )),

                  RestaurantOutletsGetRestaurantOutletInfosByUserAccountEmptyWidget(
                    controller:
                    restaurantOutletsGetRestaurantOutletInfosByUserAccountController,
                  ),
                  RestaurantOutletsMainScreenEmptyWidget(
                    restaurantOutletId: restaurantOutletId,
                    controller: restaurantOutletsMainScreenController,
                  )
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
  RestaurantOutletsProfileScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsProfileScreenCubit cubit = RestaurantOutletsProfileScreenCubit(
        context: context, restaurantOutletId: restaurantOutletId);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
