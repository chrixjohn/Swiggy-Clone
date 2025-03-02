import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_first_flutter_project/prefmanager/prefmanager.dart';
//import 'package:zwiggy/prefmanager/prefmanager.dart';

/////33333
class WebClient {
  static const baseUrl = "http://192.168.4.207:5000";

  //static const imageUrl = "https://parishprojects.herokuapp.com/file/get/";

  static Future<dynamic> post(url, data) async {
    var token = await PrefManager.getToken();
    // print(token + "ddd");
    Map? sendData = {};
    if (data?.isNotEmpty ?? false) {
      sendData.addAll(data);
    }
    print(sendData);
    var body = json.encode(sendData);
    var response = await http.post(
      Uri.parse(baseUrl + url),
      headers: {"Content-Type": "application/json", "token": token ?? ""},
      body: body,
    );
    print(response.body);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      var error = {
        "status": false,
        "msg": "Invalid Request",
      };

      return error;
    }
  }

  static Future<dynamic> get(url) async {
    var token = await PrefManager.getToken();
    print(token);
    var response = await http.get(Uri.parse(baseUrl + url),
        headers: {"Content-Type": "application/json", "token": token ?? ""});

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      var error = {
        "status": false,
        "msg": "Invalid Request",
      };
      return error;
    }
  }
}
