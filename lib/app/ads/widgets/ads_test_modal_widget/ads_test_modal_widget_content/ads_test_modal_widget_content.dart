import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/database/boolean_status.dart';
import '../../../../core/models/modal_data.dart';
import '/app/core/widgets/base_stateless_widget.dart';
import 'ads_test_modal_widget_content_controller.dart';
import 'ads_test_modal_widget_content_cubit.dart';

class AdsTestModalWidgetContent extends BaseStatelessWidget<
    AdsTestModalWidgetContentController, AdsTestModalWidgetContentCubit, AdsTestModalWidgetContentState> {
  AdsTestModalWidgetContent({Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AdsTestModalWidgetContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<AdsTestModalWidgetContentCubit,
          AdsTestModalWidgetContentState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Column(
            children: [
              // Text(getLoggedUserAccount(context)?.userAccountId?.toString() ??
              //     "" + "id"),
              Text("Hello world"),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      ModalData(
                          status: BooleanStatus.completed, data: "testing"));
                },
                child: Text("Close"),
              )
            ],
          );
        },
      ),
    );
  }

  @override
  AdsTestModalWidgetContentCubit createCubitAndAssignToController(
      BuildContext context) {
    AdsTestModalWidgetContentCubit cubit = AdsTestModalWidgetContentCubit();
    controller?.cubit = cubit;
    return cubit;
  }
}
