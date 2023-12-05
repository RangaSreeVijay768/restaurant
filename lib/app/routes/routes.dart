import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_pos/app/authentication/authentication_cubit.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/onboarding/screens/onboarding-welcome-screen/onboarding-welcome-screen.dart';
import 'package:restaurant_pos/app/onboarding/screens/onboarding_login_screen/onboarding_login_screen.dart';
import 'package:restaurant_pos/app/onboarding/screens/onboarding_signup_screen/onboarding_signup_screen.dart';
import 'package:restaurant_pos/app/restaurant_outlets/screens/restaurant_outlets_get_all_restaurant_outlets_screen/restaurant_outlets_get_all_restaurant_outlets_screen.dart';
import 'package:restaurant_pos/app/restaurant_outlets/screens/restaurant_outlets_main_screen/restaurant_outlets_main_screen.dart';
import 'package:restaurant_pos/app/restaurant_outlets/screens/restaurant_outlets_profile_screen/restaurant_outlets_profile_screen.dart';



final GoRouter router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) {
        return BlocListener<AuthenticationCubit, AuthenticationState>(
          listener: (context, state) {
            if (state.authenticationStatus == BooleanStatus.success) {
              context.go('/allrestaurants');
            } else if (state.authenticationStatus == BooleanStatus.error) {
              context.go('/home');
            } else {
              context.go('/home');
            }
          },
          child: const SizedBox(),
        );
      }),
  GoRoute(path: '/login', builder: (context, state) => OnboardingLoginScreen()),
  GoRoute(
      path: '/signup', builder: (context, state) => OnboardingSignupScreen()),
  GoRoute(
      path: '/home', builder: (context, state) => OnboardingWelcomeScreen()),
  GoRoute(
      path: '/allrestaurants',
      builder: (context, state) =>
          RestaurantOutletsGetAllRestaurantOutletsScreen()),
  GoRoute(
      path: '/restaurant/:id',
      builder: (BuildContext context, GoRouterState state) {
        String restaurantId = state.pathParameters['id']!;

        return RestaurantOutletsMainScreen(
          restaurantOutletId: restaurantId,
        );
      } // Get
  ),
  GoRoute(
      path: '/restaurant/:id/profile',
    builder: (BuildContext context, GoRouterState state){
      String restaurantOutletId = state.pathParameters['id']!;
        return RestaurantOutletsProfileScreen(
          restaurantOutletId: restaurantOutletId,
        );
    }
  )
]);
