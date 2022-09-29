import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginService
{
  Future<List> getData() async
  {
    var url = "http://192.168.45.202/personalbudget/getdata.php";
    final response = await http.get(Uri.https(url));
    var dataReceived = json.decode(response.body);
    print(dataReceived);
    return dataReceived;
  }
}