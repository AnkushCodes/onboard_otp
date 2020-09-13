import 'package:flutter/widgets.dart';
import 'package:login_signup/modules/login/helper/login_helper.dart';
import 'package:login_signup/modules/login/model/user_model.dart';


class LoginProvider with ChangeNotifier{

LoginHelper _loginHelper =LoginHelper();
User user;

loginOtpprovider(String phno) async{
  this.user =User(phNumber:phno);
   bool value =   await _loginHelper.loginUser(this.user);
      return value;
}


}