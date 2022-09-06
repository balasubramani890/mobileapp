import 'package:flutter/material.dart';

void main()
{
  runApp(SampleApp());
}

class SampleApp extends StatefulWidget {
  const SampleApp({Key? key}) : super(key: key);

  @override
  State<SampleApp> createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Senthil App Bar"),
          backgroundColor: Colors.green,
          /*leading: IconButton(icon: Icon(Icons.menu),
            onPressed: ()
            {
              print("menu clicked");
            },
          ),*/
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: (){ print("search Icon");}
            ),
            IconButton(onPressed: (){ print("more icons");
              }, icon: Icon(Icons.more_vert))
          ],
        ),
        body: Center(child: Text("Hi Senthil",
          style: TextStyle(fontSize: 50, color: Colors.red),
        )
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 50,
          child: Icon(Icons.adb),
          onPressed: () { print("Floating action button"); },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawer: Drawer(
          backgroundColor: Colors.green,
          child: Column(
            children: const <Widget>[
              UserAccountsDrawerHeader(
                  accountName: Text("Senthil"),
                  accountEmail: Text("rishek_1410@yahoo.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("Senthil"),
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                )
                ],
              ),
              ListTile(
                title: Text("Inbox"),
                leading: Icon(Icons.inbox),
              ),
              Divider(
                height: 0.1,
              ),
              ListTile(
                title: Text("Outbox"),
                leading: Icon(Icons.outbox),
              ),
              Divider(
                height: 0.1,
              ),
              ListTile(
                title: Text("Draft"),
                leading: Icon(Icons.drafts),
              ),
              Divider(
                height: 0.1,
              ),
              ListTile(
                title: Text("Social"),
                leading: Icon(Icons.social_distance),
              ),
              Divider(
                height: 0.1,
              ),
            ],
          ),
        ),
        persistentFooterButtons: <Widget>[
          RaisedButton(onPressed: (){ print("Red Raised Button");},
            elevation: 10.0,
            color: Colors.red,
            child: Icon(Icons.add),
          ),
          RaisedButton(onPressed: (){ print("Green Raised Button");},
            elevation: 10.0,
            color: Colors.green,
            child: Icon(Icons.clear),
          )
        ],
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: 0,
         fixedColor: Colors.green,
         items: const [
           BottomNavigationBarItem(icon: Icon(Icons.home),
             label: 'home',
           ),
           BottomNavigationBarItem(icon: Icon(Icons.search),
             label: 'search',
           ),
           BottomNavigationBarItem(icon: Icon(Icons.camera),
             label: 'camara',
           ),
         ],
         onTap: (int index){
           print(index.toString());
         },
       ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
