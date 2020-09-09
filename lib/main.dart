import 'package:flutter/material.dart';
import 'package:login_signup/provider/theme/them_of_app.dart';
import 'package:login_signup/route_genrator.dart';
import 'package:login_signup/utility/preferances_services.dart';
import 'package:login_signup/utility/screen_util.dart';
import 'package:login_signup/values/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ThemOfApp>(
        create: (_) => ThemOfApp(),
      ),
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
      initialRoute: '/',
      onGenerateRoute: RouteGenrator.generateRoute,
    );
  }
}
