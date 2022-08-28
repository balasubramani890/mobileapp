import 'package:flutter/material.dart';

void main()
{
  runApp(MyFirstAppDemo());
}

class MyFirstAppDemo extends StatefulWidget {
  const MyFirstAppDemo({Key? key}) : super(key: key);

  @override
  State<MyFirstAppDemo> createState() => _MyFirstAppDemoState();
}

class _MyFirstAppDemoState extends State<MyFirstAppDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Text('Senthil Balu'),
      ),
    );
  }
}

