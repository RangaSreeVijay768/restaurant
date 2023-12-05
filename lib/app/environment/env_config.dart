import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant_pos/app/core/logger/log.dart';
import 'package:restaurant_pos/app/environment/environment.dart';

@singleton
class EnvConfig {
  AppEnvironment appEnvironment;

  EnvConfig(this.appEnvironment);

  @FactoryMethod(preResolve: true)
  static Future<EnvConfig> forEnvironment() async {
    await dotenv.load(fileName: ".env");

    String env = dotenv.get("environment", fallback: "dev");
    // env=env??"dev";
    final contents = await rootBundle.loadString(
      'config/$env.json',
    );


    final json = jsonDecode(contents);
    AppEnvironment appEnvironment=AppEnvironment.fromJson(json);

    return EnvConfig(appEnvironment);
  }

  static AppEnvironment getAppEnvironment() {
    return GetIt.instance<EnvConfig>().appEnvironment;
  }
}
