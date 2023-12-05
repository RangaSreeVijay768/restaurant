import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/authentication/authentication_cubit.dart';

part 'onboarding_welcome_screen_state.dart';
part 'onboarding_welcome_screen_cubit.freezed.dart';

class OnboardingWelcomeScreenCubit extends Cubit<OnboardingWelcomeScreenState> {
  OnboardingWelcomeScreenCubit() : super(const OnboardingWelcomeScreenState.initial());
}
