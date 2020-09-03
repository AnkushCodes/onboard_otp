import 'package:shared_preferences/shared_preferences.dart';

class PreferServices {
  PreferServices() {
    init();
  }
  SharedPreferences _sharedPreferences;

  init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future setUser(String userString) async {
    _sharedPreferences.setString(usersConst, userString);
  }

  Future<String> getUser() async {
    String value = _sharedPreferences.getString(usersConst);
    return value;
  }

  signout() {
    _sharedPreferences.clear();
    _sharedPreferences.remove(usersConst);
  }
}

const String usersConst = 'user';
