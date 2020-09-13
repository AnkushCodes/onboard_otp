import 'package:http/http.dart';
import 'package:login_signup/api/api.dart';
import 'package:login_signup/modules/login/model/user_model.dart';

class LoginHelper {
  Api api = Api();
 Future<bool> loginUser(User user) async {
   // User user = User(name: 'abc', id: '12', phNumber: '676778898');
    Map<String, dynamic> sendData;
    sendData = user.toJson();
    Response response;
    try {
      response = await api.postReq('user/userotp.php', sendData);
        await new Future.delayed(const Duration(seconds: 3));
              
              
      if ((response.statusCode??400) == 200) {
        return true;
      }
      return false;
    } catch (e) {
       return false;
    }
  }
}
