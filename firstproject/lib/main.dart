import 'package:flutter/material.dart';

void main()
{
  runApp(MyFirstAppDemo());
}

class MyFirstAppDemo extends StatelessWidget {
  const MyFirstAppDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: Text('Balasubramani SenthilKumar'),
    );
  }
}
