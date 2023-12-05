import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/blocs/base_cubit.dart';
import '../../../user_accounts/widgets/user_accounts_signin_form/user_accounts_signin_form_cubit.dart';

part 'onboarding_login_screen_state.dart';

part 'onboarding_login_screen_cubit.freezed.dart';

class OnboardingLoginScreenCubit extends BaseCubit<OnboardingLoginScreenState> {
  OnboardingLoginScreenCubit({required super.context})
      : super(initialState: OnboardingLoginScreenState.initial());
}
