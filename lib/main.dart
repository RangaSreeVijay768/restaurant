import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:restaurant_pos/app/authentication/authentication_cubit.dart';
import 'package:restaurant_pos/app/bluetooth/services/bluetooth_service.dart';
import 'package:restaurant_pos/app/bluetooth/state/bluetooth_cubit.dart';
import 'package:restaurant_pos/app/core/blocs/app_bloc_observer.dart';
import 'package:restaurant_pos/app/core/di/injection.dart';
import 'package:restaurant_pos/app/core/logger/log.dart';
import 'package:restaurant_pos/app/onboarding/screens/onboarding-welcome-screen/onboarding-welcome-screen.dart';
import 'package:restaurant_pos/app/routes/routes.dart';
import 'package:restaurant_pos/app/themes/themes.dart';
import 'package:restaurant_pos/firebase_options.dart';

void main() async {
  Bloc.observer = const AppBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await configureDependencies();
  runApp(RestaurantPosApp());
}

class RestaurantPosApp extends StatelessWidget {
  const RestaurantPosApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BluetoothCubit>(
            lazy: false,
            create: (context) {
              logger.d("Building bluetooth cubit");
              return BluetoothCubit(context: context);
            }),
        BlocProvider<AuthenticationCubit>(
          create: (context) => AuthenticationCubit(context: context),
        ),
      ],
      child: BlocBuilder<AuthenticationCubit, AuthenticationState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            builder: FToastBuilder(),
            routerConfig: router,
            theme: Themes.lightTheme,
          );
        },
      ),
    );
  }
}
