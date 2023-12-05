import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_pos/app/core/widgets/base_form_stateless_widget.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import 'user_accounts_signup_form_controller.dart';
import 'user_accounts_signup_form_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class UserAccountsSignupForm
    extends BaseFormStatelessWidget<
        UserAccountsSignupFormController,
        UserAccountsSignupFormCubit,
        UserAccountsSignupFormState> {

  UserAccountsSignupForm({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserAccountsSignupFormCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          UserAccountsSignupFormCubit,
          UserAccountsSignupFormState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          final formGroup = getCubit(context).formGroup;
          return ReactiveFormBuilder(
            form: () => formGroup,
            builder: (context, form, child) {
              return ReactiveForm(
                  formGroup: formGroup,
                  child: Column(
                    children: [
                      Container(
                        padding: edge_insets_8,
                        decoration: BoxDecoration(
                            color: AppColors.grey01,
                            border: borders.b_1px_grey05,
                            borderRadius: borderRadius.br_5),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              // padding: edge_insets_y_8,
                              child: const Text(
                                "Name",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize12,
                                    color: AppColors.grey06),
                              ),
                            ),
                            ReactiveTextField<String>(
                              style: const TextStyle(fontWeight: Fonts.f500),
                              formControlName: 'displayName',
                              decoration: const InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  hintText: 'John Doe',
                                  hintStyle: TextStyle(color: AppColors.grey4),
                                  enabledBorder: InputBorder.none),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: edge_insets_t_16,
                        padding: edge_insets_8,
                        decoration: BoxDecoration(
                            color: AppColors.grey01,
                            border: borders.b_1px_grey05,
                            borderRadius: borderRadius.br_5),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              // padding: edge_insets_y_8,
                              child: const Text(
                                "Email",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize12,
                                    color: AppColors.grey06),
                              ),
                            ),
                            ReactiveTextField<String>(
                              style: const TextStyle(fontWeight: Fonts.f500),
                              formControlName: 'email',
                              decoration: const InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  hintText: 'mail@example.com',
                                  hintStyle: TextStyle(color: AppColors.grey4),
                                  enabledBorder: InputBorder.none),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: edge_insets_t_16,
                        padding: edge_insets_8,
                        decoration: BoxDecoration(
                            color: AppColors.grey01,
                            border: borders.b_1px_grey05,
                            borderRadius: borderRadius.br_5),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              // padding: edge_insets_y_8,
                              child: const Text(
                                "Password",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize12,
                                    color: AppColors.grey06),
                              ),
                            ),
                            ReactiveTextField<String>(
                              style: const TextStyle(fontWeight: Fonts.f500),
                              formControlName: 'password',
                              obscureText: true,
                              validationMessages: {
                                ValidationMessage.required: (_) =>
                                'The password must not be empty',
                              },
                              decoration: const InputDecoration(
                                  focusedErrorBorder: InputBorder.none,
                                  // errorBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: 'password',
                                  hintStyle: TextStyle(color: AppColors.grey4),
                                  enabledBorder: InputBorder.none),
                            )
                          ],
                        ),
                      ),
                    ],
                  ));
            },
          );
        },
      ),
    );
  }

  @override
  UserAccountsSignupFormCubit createCubitAndAssignToController(
      BuildContext context) {
    UserAccountsSignupFormCubit cubit = UserAccountsSignupFormCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
