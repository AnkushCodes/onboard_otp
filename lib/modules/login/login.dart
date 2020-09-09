
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:ListView(
        children: [
          Center(child:Text('OTP ENTER') ,),
          // Expanded(
          //   flex: 1,
          //   child:RaisedButton(
          //     onPressed: ()=>{},
              
          //     ),
        //  )
        ],
      )
    );
  }
}