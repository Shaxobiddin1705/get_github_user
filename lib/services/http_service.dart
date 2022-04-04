import 'dart:convert';

import 'package:http/http.dart';

class Network {
  static String baseApi = "api.github.com";
  static Map<String, String> headers = {
    'Content-type': 'application/json'
  };

  // Http Api
  static String apiGet = '/users/Shaxobiddin1705';

  // Http requests
  static Future<String> getHttp(String api, Map<String, String> params) async {
    var uri = Uri.https(baseApi, api, params);
    var response = await get(uri, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    }
    return 'null';
  }

  static Map<String, String> paramsEmpty() {
    Map<String, String> params = {};
    return params;
  }
}
