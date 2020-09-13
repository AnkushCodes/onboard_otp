import 'package:http/http.dart' as http;
import 'package:login_signup/env/serv.dart';

class Api {
  Map<String, String> headers = {"Content-type": "application/json"};
  Future<dynamic> putReq(String nav, Map<String, dynamic> sendData) async {
    String url = base_link + nav;
    var data = sendData;
    try {
      final response = await http.put(url, body: data);
      return response;
    } catch (e) {}
  }

    Future<dynamic> postReq(String nav, Map<String, dynamic> sendData) async {
    String url = base_link + nav;
    var data = sendData;
    try {
      var response = await http.post(url, body: data);
     print(response.body);
      return response;
    } catch (e) {}
  }
}
