import 'package:firstproject/service/login_Service.dart';
import 'package:flutter/material.dart';

import '../loginPage.dart';
import 'mainPage.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late LoginService loginService;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          title: const Text('Sign Up'),
          // backgroundColor: Colors.red,
        ),
        body:
            new FutureBuilder<List>(future: loginService.getData(),builder: (context, snapshot)
            {
              if(snapshot.hasError)
                {
                  print('Error in Loading' +snapshot.toString());
                }
              return snapshot.hasData?new ItemList(): new Center(
                child: CircularProgressIndicator(),
              );
            }),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 30,),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Name',
                    hintText: 'Enter Name',
                    prefixIcon: Icon(Icons.person, color: Colors.red,),
                  ),
                ),
              ),

              const SizedBox(height: 5,),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Mobile Number',
                    hintText: 'Enter Mobile Number',
                    prefixIcon: Icon(Icons.mobile_friendly, color: Colors.red,),
                  ),
                ),
              ),

              const SizedBox(height: 5,),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Password',
                    hintText: 'Enter Password',
                    prefixIcon: Icon(Icons.password, color: Colors.red,),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40),
                  primary: Colors.red,
                ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
                    },
                    child: const Text('Register')),
              ),

            ],
          ),
        )
    );
  }
}
