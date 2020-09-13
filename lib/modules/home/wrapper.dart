import 'package:flutter/material.dart';
import 'package:login_signup/modules/starting/splashscreen/splashscreen.dart';
import 'package:login_signup/utility/preferances_services.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {

init(var _pref) async{
   if(!_pref.isInitSet()){
      await _pref.init();
    }
}

  @override
  Widget build(BuildContext context) {
   var pref = Provider.of<PreferServices>(context);
    if (pref.isUserLoggedIn()) {
      print('yes');
      return SplashScreen();
    } else {
         print('no');
      return SplashScreen();
    }
  }
}
