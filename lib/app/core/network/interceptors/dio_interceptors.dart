import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:restaurant_pos/app/core/logger/log.dart';
import 'package:restaurant_pos/app/core/models/users/user_auth_token.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RestaurantInterceptors extends InterceptorsWrapper {
  @override
  FutureOr<dynamic> onRequest(RequestOptions options,
      RequestInterceptorHandler requestInterceptorHandler) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userAuthTokenString = prefs.getString("userAuthToken");
    if (userAuthTokenString != null) {
      UserAuthToken userAuthToken =
          UserAuthToken.fromJson(jsonDecode(userAuthTokenString));
      options.headers
          .addAll({"Authorization": "Bearer ${userAuthToken.userAuthToken}"});
    }

    return requestInterceptorHandler.next(options);
  }

  @override
  void onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    dynamic object = response.data;
    if (object is String) {
      //FIXME:This is dirty hack
      if (object.startsWith("\"")) {
        response.data = object.substring(1, object.length - 1);
      }
    }
    return handler.next(response);
  }
}
