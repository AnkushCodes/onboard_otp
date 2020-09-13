import 'package:flutter/material.dart';
import 'package:login_signup/modules/starting/splashscreen/splashscreen.dart';
import 'package:login_signup/utility/them_of_app.dart';
import 'package:login_signup/route_genrator.dart';
import 'package:login_signup/utility/preferances_services.dart';
import 'package:provider/provider.dart';

import 'modules/login/provider/loginprovider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ThemOfApp>(
        create: (_) => ThemOfApp(),
      ),
      ChangeNotifierProvider<LoginProvider>(create: (_) => LoginProvider()),
      Provider(
        create: (BuildContext context) => PreferServices(),
      ),
    ],
    child: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData data = Provider.of<ThemOfApp>(context).gettheme();
    return MaterialApp(
      theme: data,
      home: SplashScreen(),
      onGenerateRoute: RouteGenrator.generateRoute,
    );
  }
}
