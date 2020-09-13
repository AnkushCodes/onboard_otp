
import 'package:flutter/material.dart';
import 'package:login_signup/modules/login/otp.dart';
import 'package:login_signup/modules/login/provider/loginprovider.dart';
import 'package:login_signup/utility/screen_util.dart';
import 'package:provider/provider.dart';

import 'model/user_model.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final key = GlobalKey<FormState>();
  bool is_loading = false;

  bool _autovalidate = false;
 String ph_no;

  String validateMobile(String value) {
    _autovalidate = true;
    String pattern = r'(^[0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    if (!(value != null)) {
      return 'Please enter mobile number';
    }
    if (value.length == 0) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }

    return null;
  }

 phoneText() {
      return TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: 'Mobile Number',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2.0))),
        onSaved: (String value) => ph_no = value,
        validator: validateMobile,
      );
    }
  @override
  Widget build(BuildContext context) {
    var _bloc = Provider.of<LoginProvider>(context);
    
   

    return Scaffold(
        appBar: AppBar(
          title: Text('Login With Mobile'),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: ViewSize.sHeight / 3,
                  ),
                  Form(
                    key: key,
                    autovalidate: _autovalidate,
                    child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: ViewSize.sWidth / 10),
                        child: phoneText()),
                  ),
                  SizedBox(
                    height: ViewSize.sHeight / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          height: 50,
                          color: Colors.black,
                          child: Text(
                            'Get OTP',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          onPressed: () async{
                            if (key.currentState.validate())  {
                              key.currentState.save();
                              is_loading = true;
                              setState(() {});
                            bool val = await _bloc.loginOtpprovider(ph_no);
                            print(val);
                             is_loading = false;
                              setState(() {});
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          PinCodeVerificationScreen(
                                           ph_no)));
                            }
                            
                          })
                    ],
                  )
                ],
              ),
            ),
            Visibility(
              child: Container(
                  color: Colors.black.withOpacity(0.10),
                  child: Center(
                    child: CircularProgressIndicator(),
                  )),
              visible: is_loading,
            )
          ],
        ));
  }
}
