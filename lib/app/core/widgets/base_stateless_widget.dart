import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../authentication/authentication_cubit.dart';
import '../controllers/base_controller.dart';

abstract class BaseStatelessWidget<T extends BaseController, C extends BlocBase,
    S> extends StatelessWidget {
  final T? controller;

  final Function(S)? onStateChanged;

  const BaseStatelessWidget({this.controller, super.key, this.onStateChanged});

  C createCubitAndAssignToController(BuildContext context);

  // UserAccount? getLoggedUserAccount(BuildContext context) {
  //   AuthenticationCubit authenticationCubit =
  //       BlocProvider.of<AuthenticationCubit>(context);
  //   return authenticationCubit.state.userAccount ?? null;
  // }

  C getCubit(BuildContext context) {
    return BlocProvider.of<C>(context);
  }

  initializeController(BuildContext context) {
    this.controller?.childContext = context;
  }
}
