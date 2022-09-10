import 'package:flutter/material.dart';
import 'package:firstproject/CardView.dart';
class SampleImageApp extends StatefulWidget {
  const SampleImageApp({Key? key}) : super(key: key);

  @override
  State<SampleImageApp> createState() => _SampleImageAppState();
}

class _SampleImageAppState extends State<SampleImageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Home Page'),
      ),
      body: Center(
        child: const Text("Sample Body of the page"),
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
        RaisedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CardView()));
        },
          color: Colors.amber,
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
          ),
        ),
        RaisedButton(onPressed: (){
           Navigator.pop(context);
        },
          color: Colors.red,
          child: Icon(
            Icons.navigate_before,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
