import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_pos/app/core/widgets/base_stateless_widget.dart';
import 'package:restaurant_pos/app/onboarding/screens/onboarding-welcome-screen/onboarding-welcome-screen_controller.dart';
import 'package:restaurant_pos/app/onboarding/screens/onboarding-welcome-screen/onboarding_welcome_screen_cubit.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/borders.dart';
import '../../../themes/fonts.dart';


class OnboardingWelcomeScreen extends BaseStatelessWidget<
    OnboardingWelcomeScreenController,
    OnboardingWelcomeScreenCubit,
    OnboardingWelcomeScreenState> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingWelcomeScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<OnboardingWelcomeScreenCubit,
          OnboardingWelcomeScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              backgroundColor: AppColors.bgLightBlue,
              body: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/welcome_bg.png",),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 120,),
                        Image.asset("images/icon.png", width: 240, height: 240,)
                      ],
                    ),
                  ),
                  Container(
                    padding: edge_insets_30,
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height/2.7,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: borderRadius.br_t_20
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("Welcome to", style: TextStyle(
                            fontSize: Fonts.fontSize16,
                            fontWeight: Fonts.f600
                        ),),
                        SizedBox(height: 8,),
                        Text("RestroMaster", style: TextStyle(
                            fontSize: Fonts.fontSize32,
                            fontWeight: Fonts.f700
                        ),),
                        SizedBox(height: 8,),
                        Text("Start to manage your restaurant digitally", style: TextStyle(
                            fontSize: Fonts.fontSize12,
                            fontWeight: Fonts.f400
                        ),),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppColors.orange,
                                    foregroundColor: AppColors.orange,
                                    padding: edge_insets_y_16
                                  ),
                                    onPressed: (){
                                    context.go('/login');
                                    },
                                child: Text("Continue", style: TextStyle(
                                  color: AppColors.white
                                ),)
                            )
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
          );
        },
      ),
    );
  }

  @override
  OnboardingWelcomeScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    OnboardingWelcomeScreenCubit onboardingWelcomeScreenCubit =
    OnboardingWelcomeScreenCubit();
    controller?.cubit = onboardingWelcomeScreenCubit;
    return onboardingWelcomeScreenCubit;
  }
}
