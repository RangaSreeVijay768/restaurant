import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/core/models/users/user_auth_token.dart';
import 'package:restaurant_pos/app/core/widgets/base_stateless_widget.dart';
import 'package:restaurant_pos/app/onboarding/screens/onboarding_login_screen/onboarding_login_screen_cubit.dart';
import 'package:restaurant_pos/app/onboarding/screens/onboarding_signup_screen/onboarding_signup_screen_controller.dart';
import 'package:restaurant_pos/app/onboarding/screens/onboarding_signup_screen/onboarding_signup_screen_cubit.dart';
import 'package:restaurant_pos/app/user_accounts/widgets/user_accounts_signup_form/user_accounts_signup_form.dart';

import '../../../authentication/authentication_cubit.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import '../../../themes/borders.dart';
import '../../../user_accounts/widgets/user_accounts_signup_form/user_accounts_signup_form_controller.dart';
import '../onboarding_login_screen/onboarding_login_screen.dart';

class OnboardingSignupScreen extends BaseStatelessWidget<
    OnboardingSignupScreenController,
    OnboardingSignupScreenCubit,
    OnboardingSignupScreenState> {
  UserAccountsSignupFormController userAccountsSignupFormController =
      UserAccountsSignupFormController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingSignupScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<OnboardingSignupScreenCubit,
          OnboardingSignupScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(),
              body: SingleChildScrollView(
                child: Container(
                  margin: edge_insets_16,
                  child: Column(
                    children: [
                      const Text(
                        "New here?",
                        style: TextStyle(
                            fontSize: Fonts.fontSize24, fontWeight: Fonts.f700),
                      ),
                      // SizedBox(height: 50,),
                      Container(
                        margin: edge_insets_t_8,
                        child: const Text(
                          "Create your account",
                          style: TextStyle(
                              fontSize: Fonts.fontSize20,
                              color: AppColors.grey06),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),

                      UserAccountsSignupForm(
                        controller: userAccountsSignupFormController,
                        onStateChanged: (userAccountsSignupFormState) {
                          getCubit(context).emitState(state.copyWith(
                              userAccountsSignupFormState:
                                  userAccountsSignupFormState));
                        },
                      ),

                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: edge_insets_t_40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: AppColors.orange,
                                  disabledBackgroundColor: AppColors.grey06,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: borderRadius.br_5),
                                  padding: edge_insets_x_24_y_17),
                              onPressed: (state.userAccountsSignupFormState
                                              ?.signUpStatus ==
                                          BooleanStatus.pending ||
                                      state.userAccountsSignupFormState
                                              ?.formValid !=
                                          ControlStatus.valid)
                                  ? null
                                  : () async {
                                      UserAuthToken userAuthToken =
                                          await userAccountsSignupFormController
                                              .getChildCubit()
                                              .signUp(
                                                  userAccountsSignupFormController
                                                      .getChildCubit()
                                                      .createRequestData());
                                      context.push('/login');
                                      BlocProvider.of<AuthenticationCubit>(context)
                                          .saveUserAuthToken(userAuthToken);
                                    },
                              child: const Text(
                                "Create my account",
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: Fonts.fontSize14,
                                  fontWeight: Fonts.f600,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Container(
                        margin: edge_insets_t_8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Have an account?',
                              style: TextStyle(
                                color: AppColors.grey06,
                                fontSize: Fonts.fontSize14,
                              ),
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                    padding: edge_insets_x_10),
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OnboardingLoginScreen()));
                                },
                                child: const Text(
                                  'Signin',
                                  style: TextStyle(
                                      color: AppColors.orange,
                                      fontSize: Fonts.fontSize16),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }

  @override
  OnboardingSignupScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    OnboardingSignupScreenCubit onboardingSignupScreenCubit =
        OnboardingSignupScreenCubit(context: context);
    controller?.cubit = onboardingSignupScreenCubit;
    return onboardingSignupScreenCubit;
  }
}
