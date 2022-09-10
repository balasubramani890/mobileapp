import 'package:flutter/material.dart';
import 'package:firstproject/SampleImageApp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
           children: <Widget>[
             Padding(padding: EdgeInsets.all(20),child: TextField(
               decoration: InputDecoration(
                 icon: Icon(Icons.people),
                 labelText: 'Login Id',
                 hintText: 'Enter Mail id'
               ),
             ),
             ),
             Padding(padding: EdgeInsets.all(20),child: TextField(
               obscureText: true,
               decoration: InputDecoration(
                 icon: Icon(Icons.password),
                     labelText: 'Password',
                 hintText: 'Password'
               ),
             ),
             ),
             RaisedButton(
                 onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SampleImageApp()));
             },
               color: Colors.green,
             textColor: Colors.black,
               child: Text("Submit"),
             )
           ],
          )
        ),
      ),
    );
  }
}
