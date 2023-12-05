import 'package:avatars/avatars.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/core/logger/log.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_pos/app/upload_file/widgets/upload_file/upload_file.dart';
import 'package:restaurant_pos/app/upload_file/widgets/upload_file/upload_file_controller.dart';

import 'get_image_by_entity_id_and_image_type_controller.dart';
import 'get_image_by_entity_id_and_image_type_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class GetImageByEntityIdAndImageType extends BaseStatelessWidget<
    GetImageByEntityIdAndImageTypeController,
    GetImageByEntityIdAndImageTypeCubit,
    GetImageByEntityIdAndImageTypeState> {
  String entity;
  String imageType;
  String alt;
  num size;

  GetImageByEntityIdAndImageType(
      {Key? key,
      super.controller,
      super.onStateChanged,
      required this.entity,
      required this.imageType,
      required this.alt,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetImageByEntityIdAndImageTypeCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<GetImageByEntityIdAndImageTypeCubit,
          GetImageByEntityIdAndImageTypeState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);

          }
          if(state.getImageByEntityIdAndImageTypeResponse != null &&
              state.getImageByEntityIdAndImageTypeResponse!.isNotEmpty){
            logger.d( state.getImageByEntityIdAndImageTypeResponse!.first.uploadedFile!.fileLink);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Column(
            children: [
              Avatar(
                sources: state.getImageByEntityIdAndImageTypeResponse != null &&
                    state.getImageByEntityIdAndImageTypeResponse!.isNotEmpty
                    ? [
                  GenericSource(Image.network(state
                      .getImageByEntityIdAndImageTypeResponse!
                      .first
                      .uploadedFile!
                      .fileLink!).image)
                ]
                    : [],
                name: state.alt,
                shape: AvatarShape.circle(state.size.toDouble()),
              )
            ],
          );
        },
      ),
    );
  }

  @override
  GetImageByEntityIdAndImageTypeCubit createCubitAndAssignToController(
      BuildContext context) {
    GetImageByEntityIdAndImageTypeCubit cubit =
        GetImageByEntityIdAndImageTypeCubit(
            context: context, entity: entity, imageType: imageType,size: size,alt: alt);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
