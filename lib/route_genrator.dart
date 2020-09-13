import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/main.dart';
import 'package:login_signup/modules/starting/splashscreen/splashscreen.dart';
import 'package:login_signup/values/routes.dart';
import 'package:provider/provider.dart';

import 'modules/login/login.dart';

class RouteGenrator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case RoutesName.home:
        return CupertinoPageRoute(builder: (_) => Home());

      case RoutesName.initial:
        return CupertinoPageRoute(builder: (_) => SplashScreen());

      case RoutesName.login:
        return CupertinoPageRoute(builder: (_) => Login());
    }
  }
}
