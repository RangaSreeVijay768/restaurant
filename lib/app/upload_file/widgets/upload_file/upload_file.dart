import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'upload_file_controller.dart';
import 'upload_file_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class UploadFile
    extends BaseStatelessWidget<UploadFileController,
        UploadFileCubit,
        UploadFileState> {

  UploadFile({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UploadFileCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<UploadFileCubit, UploadFileState>(
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
  UploadFileCubit createCubitAndAssignToController(BuildContext context) {
    UploadFileCubit cubit = UploadFileCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
