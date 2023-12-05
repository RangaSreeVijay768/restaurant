import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'attach_image_controller.dart';
import 'attach_image_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class AttachImage extends BaseStatelessWidget<AttachImageController,
    AttachImageCubit, AttachImageState> {
  String? fileId;
  String? imageType;
  String? entity;

  AttachImage(
      {String? fileId,
      String? imageType,
      String? entity,
      Key? key,
      super.controller,
      super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AttachImageCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<AttachImageCubit, AttachImageState>(
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
  AttachImageCubit createCubitAndAssignToController(BuildContext context) {
    AttachImageCubit cubit = AttachImageCubit(
        context: context, fileId: fileId, entity: entity, imageType: imageType);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
