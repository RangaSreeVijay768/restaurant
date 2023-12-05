import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/models/modal_data.dart';
import '/app/core/widgets/base_stateless_widget.dart';
import 'ads_test_modal_widget_content/ads_test_modal_widget_content.dart';
import 'ads_test_modal_widget_controller.dart';
import 'ads_test_modal_widget_cubit.dart';

class AdsTestModalWidget extends BaseStatelessWidget<
    AdsTestModalWidgetController, AdsTestModalWidgetCubit, AdsTestModalWidgetState> {
  AdsTestModalWidget({Key? key, super.controller, this.onModalClosed})
      : super(key: key);

  Function(ModalData<String>)? onModalClosed;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AdsTestModalWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<AdsTestModalWidgetCubit, AdsTestModalWidgetState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          AdsTestModalWidgetCubit cubit = getCubit(context);
          return TextButton(
              onPressed: () {
                openModal(context, cubit);
              },
              child: Text("Open Modal"));
        },
      ),
    );
  }

  Future<T?> openModal<T>(BuildContext context, BlocBase cubit) {
    getCubit(context).openModal();
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return BlocProvider.value(
            value: cubit,
            child: getModalContentWidget(context),
          );
        }).then((value) {
      getCubit(context).closeModal();
      if (this.onModalClosed != null) {
        this.onModalClosed!(value);
      }
    });
  }

  Widget getModalContentWidget(BuildContext context) {
    return AdsTestModalWidgetContent();
  }

  @override
  AdsTestModalWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    AdsTestModalWidgetCubit cubit = AdsTestModalWidgetCubit();
    controller?.cubit = cubit;
    return cubit;
  }
}
