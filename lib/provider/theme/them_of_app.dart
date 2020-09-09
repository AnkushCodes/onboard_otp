import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThemOfApp extends ChangeNotifier {
  ThemeData themeSet;
  ThemOfApp() {
    themeSet = basicTheme();
  }

  ThemeData basicTheme() {
    TextTheme _basicTextTheme(TextTheme base) {
      return base.copyWith(
        bodyText1: base.bodyText1.copyWith(
          fontFamily: 'Roboto',
          fontSize: 22.0,
          color: Colors.white,
        ),
      );
    }

    final ThemeData base = ThemeData.light();
    return base.copyWith(
        textTheme: _basicTextTheme(base.textTheme),
        primaryColor: Colors.orange,
        indicatorColor: Color(0xFF807A6B),
        scaffoldBackgroundColor: Color(0xFFF5F5F5),
        accentColor: Color(0xFFFFF8E1),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 20.0,
        ),
        buttonColor: Colors.white,
        backgroundColor: Colors.white,
        tabBarTheme: base.tabBarTheme.copyWith(
          labelColor: Color(0xffce107c),
          unselectedLabelColor: Colors.grey,
        ));
  }


  ThemeData gettheme() {
    if (themeSet != null) return themeSet;
    themeSet = basicTheme();
    return themeSet;
  }

  setTheme(Function data) {
    themeSet = data();
    notifyListeners();
  }

  themeSwitch(String type) {
    switch (type) {
      case 'basic':
        {
          setTheme(basicTheme);
          break;
        }
      case 'dark':
        {
          print('themeChanged...');
        //  setTheme(pinkTheme);
          break;
        }
    }
  }
}
