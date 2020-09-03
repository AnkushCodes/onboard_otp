import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_signup/values/routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double kheight = 10;
  @override
  void initState() {
    timerSet(animeTime, 0);
    // timerSet(nextScreen,3);
    super.initState();
  }

  timerSet(Function getFuntion, int time) {
    print('object');
    Timer(new Duration(seconds: time), () => getFuntion());
    Timer(new Duration(seconds: 3), () => nextScreen());
  }

  animeTime() {
    setState(() {
      kheight = MediaQuery.of(context).size.height / 0.9;
    });
  }

  nextScreen() {
    Navigator.pushReplacementNamed(context, RoutesName.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Hello'),),
      body: Center(
        child:Text('Hello')
        //  AnimatedContainer(
        //   height: kheight,
        //   curve: Curves.easeInExpo,
        //   // decoration:
        //   //     BoxDecoration(image: DecorationImage(image: AssetImage(kimage))),
        //   duration: Duration(seconds: 1),
        //   child: Container(child: Text('Welcome'),),
        // ),
      ),
    );
  }
}
