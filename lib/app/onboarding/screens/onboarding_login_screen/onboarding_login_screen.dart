import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:restaurant_pos/app/core/widgets/base_stateless_widget.dart';
import 'package:restaurant_pos/app/onboarding/screens/onboarding_login_screen/onboarding_login_screen_controller.dart';
import 'package:restaurant_pos/app/onboarding/screens/onboarding_login_screen/onboarding_login_screen_cubit.dart';
import 'package:restaurant_pos/app/user_accounts/widgets/user_accounts_signin_form/user_accounts_signin_form.dart';
import 'package:restaurant_pos/app/user_accounts/widgets/user_accounts_signin_form/user_accounts_signin_form_controller.dart';

import '../../../authentication/authentication_cubit.dart';
import '../../../core/database/boolean_status.dart';
import '../../../core/models/users/user_auth_token.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import '../../../themes/borders.dart';
import '../onboarding_signup_screen/onboarding_signup_screen.dart';


class OnboardingLoginScreen extends BaseStatelessWidget<
    OnboardingLoginScreenController,
    OnboardingLoginScreenCubit,
    OnboardingLoginScreenState> {
   OnboardingLoginScreen({super.key});

  UserAccountsSigninFormController userAccountsSigninFormController =
      UserAccountsSigninFormController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingLoginScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child:
          BlocConsumer<OnboardingLoginScreenCubit, OnboardingLoginScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(),
              body: Scaffold(
                  body: SingleChildScrollView(
                child: Container(
                  padding: edge_insets_16,
                  child: Column(
                    children: [
                      Container(
                        margin: edge_insets_t_24,
                        child: const Text(
                          "Have an account?",
                          style: TextStyle(
                            fontSize: Fonts.fontSize24,
                            fontWeight: Fonts.f700,
                          ),
                        ),
                      ),
                      Container(
                        margin: edge_insets_t_8,
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: Fonts.fontSize20,
                              fontWeight: Fonts.f400,
                              color: AppColors.grey06),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      UserAccountsSigninForm(
                        controller: userAccountsSigninFormController,
                        onStateChanged: (userAccountsSigninFormState){
                          getCubit(context).emitState(state.copyWith(
                            userAccountsSigninFormState: userAccountsSigninFormState
                          ));
                        },
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: edge_insets_t_16,
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(fontSize: Fonts.fontSize16),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),

                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: AppColors.orange,
                              shape: RoundedRectangleBorder(
                                  borderRadius: borderRadius.br_5),
                              disabledBackgroundColor: AppColors.grey01,
                              padding: edge_insets_x_80_y_16),
                          onPressed: (state.userAccountsSigninFormState
                                          ?.signInStatus ==
                                      BooleanStatus.pending ||
                                  state.userAccountsSigninFormState
                                          ?.formValid !=
                                      ControlStatus.valid)
                              ? null
                              : () async {
                                  UserAuthToken userAuthToken =
                                      await userAccountsSigninFormController
                                          .getChildCubit()
                                          .signIn(
                                              userAccountsSigninFormController
                                                  .getChildCubit()
                                                  .createRequestData());
                                  BlocProvider.of<AuthenticationCubit>(context)
                                      .saveUserAuthToken(userAuthToken);
                                  getCubit(context)
                                      .logEvent(name: 'user_accounts_sign_in');
                                  context.go("/allrestaurants");
                                },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontWeight: Fonts.f500,
                                fontSize: Fonts.fontSize18,
                                color: AppColors.white),
                          )),
                      SizedBox(
                        height: 150,
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "New here?",
                              style: TextStyle(
                                  fontSize: Fonts.fontSize14,
                                  color: AppColors.grey06),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            OnboardingSignupScreen()));
                              },
                              child: Text(
                                " Create account",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize16,
                                    color: AppColors.orange),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )));
        },
      ),
    );
  }

  @override
  OnboardingLoginScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    OnboardingLoginScreenCubit onboardingLoginScreenCubit =
        OnboardingLoginScreenCubit(context: context);
    controller?.cubit = onboardingLoginScreenCubit;
    return onboardingLoginScreenCubit;
  }
}
