import 'package:shared_preferences/shared_preferences.dart';

class PreferServices {
  SharedPreferences _sharedPreferences;
  static final _usersConst = 'user';
  PreferServices() {
    init();
  }

  init() async {
    if (!(_sharedPreferences != null)) {
      _sharedPreferences = await SharedPreferences.getInstance();
    }
  }

  getSharePrefernace() async {
    if (!(_sharedPreferences != null)) {
      _sharedPreferences = await SharedPreferences.getInstance();
      return _sharedPreferences;
    } else {
      return _sharedPreferences;
    }
  }

  setUser(String userString) async {
    await _sharedPreferences.setString(_usersConst, userString);
  }

  getUser() async {
    await init();
    String value = _sharedPreferences.getString(_usersConst).toString();
    return value;
  }

  bool isInitSet() {
    return _sharedPreferences ?? false;
  }

  bool isUserLoggedIn() {
    if (_sharedPreferences.getString(_usersConst) != null) {
      return true;
    } else {
      return false;
    }
  }

  signout() {
    _sharedPreferences.clear();
    _sharedPreferences.remove(_usersConst);
  }
}
