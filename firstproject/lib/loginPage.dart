import 'package:firstproject/screens/mainPage.dart';
import 'package:firstproject/screens/signUp.dart';
import 'package:flutter/material.dart';
import 'package:firstproject/service/login_Service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // LoginService _loginService;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: const Text('Login'),
      ),
    body: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  hintText: 'Mobile Number',
                prefixIcon: Icon(Icons.people, color: Colors.red,),
              ),
            ),
          ),

          const SizedBox(height: 5,),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Password',
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const MainPage()));
                },
                child: const Text('Login')),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(40),
              primary: Colors.red,
            ),
                onPressed: (){
                  // loginService.getData();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()));
                },
                child: const Text('Don\'t have Account? Sign Up')),
          ),
        ],
      ),
    )
    );
  }
}
