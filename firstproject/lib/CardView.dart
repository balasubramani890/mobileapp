import 'package:firstproject/SampleImageApp.dart';
import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  void showBottom()
  {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context){
      return Container(
        child: Row(
          children: <Widget>[
            Text("Simple Bottom Sheet"),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SampleImageApp()));
            },
              color: Colors.red,
              child: Text("OK"),)
          ],
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card View / Bottom Sheet"),
      ),
      body: Center(
        child: Card(
          color: Colors.green,
          child: Container(
            height: 200,
            child: Column(
              children: <Widget>[
                Text("Hi Senthil, If you need to go back to the first page click the Button BOTTOM SHEET CLICK HERE and press OK then you are go back"),
                RaisedButton(onPressed: showBottom,
                child: Text("BOTTOM SHEET CLICK HERE"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
