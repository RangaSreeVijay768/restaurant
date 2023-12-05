import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/buttons.dart';
import '../../../themes/fonts.dart';
import '../../../themes/shadows.dart';
import 'user_accounts_logout_user_controller.dart';
import 'user_accounts_logout_user_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class UserAccountsLogoutUser
    extends BaseStatelessWidget<
        UserAccountsLogoutUserController,
        UserAccountsLogoutUserCubit,
        UserAccountsLogoutUserState> {

  UserAccountsLogoutUser({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserAccountsLogoutUserCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          UserAccountsLogoutUserCubit,
          UserAccountsLogoutUserState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            padding: edge_insets_x_16,
            // margin: edge_insets_b_50,
            alignment: Alignment.bottomCenter,
            decoration: const BoxDecoration(boxShadow: [shadows.bs_grey]),
            child: Row(
              children: [
                Expanded(
                    child: TextButton(
                      style: Buttons.sideMenuButton,
                      onPressed: () {
                        getCubit(context).logout();
                        getCubit(context).logEvent(name: 'user_accounts_logout_user');
                        context.go('/login');
                      },
                      child: const Row(
                        children: [
                          SizedBox(
                            width: 16,
                          ),
                          Icon(
                            Icons.logout_outlined,
                            color: AppColors.textHeading,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Logout",
                            style: TextStyle(
                                color: AppColors.textHeading,
                                fontSize: Fonts.fontSize16,
                                fontWeight: Fonts.f400),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  UserAccountsLogoutUserCubit createCubitAndAssignToController(
      BuildContext context) {
    UserAccountsLogoutUserCubit cubit = UserAccountsLogoutUserCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
