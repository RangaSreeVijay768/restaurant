import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/blocs/base_cubit.dart';
import 'package:restaurant_pos/app/user_accounts/widgets/user_accounts_signup_form/user_accounts_signup_form_cubit.dart';

part 'onboarding_signup_screen_state.dart';

part 'onboarding_signup_screen_cubit.freezed.dart';

class OnboardingSignupScreenCubit
    extends BaseCubit<OnboardingSignupScreenState> {
  OnboardingSignupScreenCubit({required super.context})
      : super(initialState: OnboardingSignupScreenState.initial());
}
