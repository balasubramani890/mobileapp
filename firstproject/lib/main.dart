import 'package:flutter/material.dart';
import 'package:firstproject/LoginPage.dart';

    void main()
    {
      runApp(FirstApp());
    }
    class FirstApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: "First App",
          debugShowCheckedModeBanner: true,
          home: LoginPage(),
        );
      }
    }



