import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup/constant/color_const.dart';
import 'package:login_signup/utility/preferances_services.dart';
import 'package:login_signup/utility/screen_util.dart';
import 'package:login_signup/values/assets.dart';
import 'package:login_signup/values/routes.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double kheight = 0;
  @override
  void initState() {
    
    super.initState();
    
    //timerSet();
    nextScreen();
  }

  nextScreen() async {
    PreferServices _pref = Provider.of<PreferServices>(context, listen: false);
    if(!_pref.isInitSet()){
      await _pref.init();
    }
    // if (Provider.of<PreferServices>(context,listen: false).isUserLoggedIn) {
    print(_pref.isUserLoggedIn());
    // Navigator.pushReplacementNamed(context, RoutesName.login);
    // }else{
    // Navigator.pushReplacementNamed(context, RoutesName.);
    // }
  }

  timerSet() {
    Timer(new Duration(seconds: 3), () => {});
   
   // animeTime();
  }

  animeTime() {
    setState(() {
      kheight = ViewSize.sWidth / 4;
    });
  }

  @override
  Widget build(BuildContext context) {
    ViewSize.initScreen(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.deepOrange.withOpacity(0.6), BlendMode.dstATop),
              image: AssetImage(Jpgs.imgSplash))),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          //appBar: AppBar(title: Text('Hello'),),
          body: ListView(
            children: [
              SizedBox(
                height: ViewSize.sHeight / 2,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: (ViewSize.sWidth / 2),
                  child: Text(
                    'Welcome',
                    style: GoogleFonts.lora(
                        fontSize: ViewSize.sWidth / 10,
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                ),
              ),
              SizedBox(
                height: ViewSize.sHeight / 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    color: Colors.black.withOpacity(0.5),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      child: Text(
                        'Get Started',
                        style: GoogleFonts.lora(
                            fontSize: ViewSize.sWidth / 15,
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.orangeAccent)
                                .color),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
