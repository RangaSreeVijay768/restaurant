import 'dart:io';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_pos/app/upload_file/widgets/get_image_by_entity_id_and_image_type/get_image_by_entity_id_and_image_type.dart';

import 'core_image_picker_controller.dart';
import 'core_image_picker_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class CoreImagePicker extends BaseStatelessWidget<CoreImagePickerController,
    CoreImagePickerCubit, CoreImagePickerState> {
  CoreImagePicker({Key? key, super.controller, super.onStateChanged})
      : super(key: key);
  final ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoreImagePickerCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<CoreImagePickerCubit, CoreImagePickerState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Column(
            children: [
              state.xFile != null
                  ? InkWell(
                      onTap: () {
                        getCubit(context).pickImage();
                      },
                      child: ClipRRect(
                        borderRadius: borderRadius.br_100, // Image border
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(48), // Image radius
                          child: Image.file(
                            File(state.xFile!.path),
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ))
                  : InkWell(
                      onTap: () {
                        getCubit(context).pickImage();
                      },
                      child: Image.asset(
                        "images/select_image.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
            ],
          );
        },
      ),
    );
  }

  @override
  CoreImagePickerCubit createCubitAndAssignToController(BuildContext context) {
    CoreImagePickerCubit cubit = CoreImagePickerCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}

class CoreImagePickerChangeImage extends CoreImagePicker {
  String entity;
  int size;
  String alt;
  String imageType;

  CoreImagePickerChangeImage(
      {super.key,
      super.onStateChanged,
      super.controller,
      required this.size,
      required this.imageType,
      required this.alt,
      required this.entity});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoreImagePickerCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<CoreImagePickerCubit, CoreImagePickerState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Column(
            children: [
              state.xFile != null
                  ? InkWell(
                      onTap: () {
                        getCubit(context).pickImage();
                      },
                      child: ClipRRect(
                        borderRadius: borderRadius.br_100, // Image border
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(48), // Image radius
                          child: Image.file(
                            File(state.xFile!.path),
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ))
                  : Column(
                children: [
                  GetImageByEntityIdAndImageType(
                      entity: entity,
                      imageType: imageType,
                      alt: alt,
                      size: size),
                  TextButton(onPressed: (){
                    getCubit(context).pickImage();
                  }, child: Text("change"))
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
