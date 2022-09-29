import 'package:flutter/material.dart';
import 'package:firstproject/loginPage.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main()
{
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// Future<List> getData() async
// {
//   var url = "http://192.168.45.202/personalbudget/getdata.php";
//   final response = await http.get(Uri.parse(url));
//   var dataReceived = json.decode(response.body);
//   // print(dataReceived);
//   return dataReceived;
// }

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    // getData();
  }

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.red),
            ),
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
