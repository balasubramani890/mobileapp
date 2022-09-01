import 'package:flutter/material.dart';
import 'package:firstproject/LoginPage.dart';

void main()
{
  runApp(MyFirstAppDemo());
}

class MyFirstAppDemo extends StatelessWidget {
  const MyFirstAppDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: LoginPage(),
    );
  }
}
