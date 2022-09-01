import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


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
        title: Text('Hai SENTHIL'),
      ),
      body: Center(
        child: const Text("This is sample work space and used for demo purpose to be used let it will be used"),
      ),
      drawer: Drawer(
        child: ListView(
          children: const<Widget>[
            DrawerHeader(
              decoration:BoxDecoration(
                color: Colors.red
              ),
              child: Text("drawer head sample"),
            ),
            ListTile(
              title: Text("First"),
              leading: Icon(Icons.add),
            ),
            ListTile(
              title: Text("Second"),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text("Divide First"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 12.0,
        backgroundColor: Colors.green,
        onPressed: () {
          print("new floating action button");
        },
        child: Icon(Icons.add),
      ),
      persistentFooterButtons: <Widget>[
        RaisedButton(onPressed: (){},
          color: Colors.amber,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        RaisedButton(onPressed: (){},
          color: Colors.brown,
          child: Icon(
            Icons.ac_unit,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
