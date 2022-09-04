import 'package:flutter/material.dart';

void main()
{
  runApp(SampleAppBar());
}

class SampleAppBar extends StatefulWidget {
  const SampleAppBar({Key? key}) : super(key: key);

  @override
  State<SampleAppBar> createState() => _SampleAppBarState();
}

class _SampleAppBarState extends State<SampleAppBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Senthil",
      home: Scaffold(
        appBar: AppBar(

          leading: IconButton(
            icon: Icon(Icons.menu), onPressed: () {
          },
          ),
          actions: <Widget>[
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
          ],
          flexibleSpace: SafeArea(
            child: Icon(
              Icons.ac_unit
            ),
          ),
            bottom: PreferredSize(
            child: Container(
            color: Colors.red,
            height: 50,
              width: double.infinity,
              child: Text("Senthil Balu"),
        ),
        preferredSize: Size.fromHeight(50),
        ),
          ),
        body: Center(child: Text("Senthil Balu", style: TextStyle(fontSize: 25),)),
        floatingActionButton: FloatingActionButton(onPressed: () {  },
          elevation: 25.0,
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        ),
      );
  }
}
