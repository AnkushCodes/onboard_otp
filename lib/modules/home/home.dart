import 'package:flutter/material.dart';
import 'package:login_signup/modules/starting/splashscreen/splashscreen.dart';
import 'package:login_signup/utility/preferances_services.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PreferServices>(
      builder: (BuildContext context, pref, Widget child) {
        if (pref.isUserLoggedIn()) {
          return Container();
        } else {
          return SplashScreen();
        }
      },
    );
  }
}
