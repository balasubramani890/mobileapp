import 'package:flutter/material.dart';

class AlertBoxSample extends StatefulWidget {
  const AlertBoxSample({Key? key}) : super(key: key);

  @override
  State<AlertBoxSample> createState() => _AlertBoxSampleState();
}

class _AlertBoxSampleState extends State<AlertBoxSample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Box Sample Page"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {  },
          child: Text("Alert Box click here", style: TextStyle(color: Colors.white),),
          color: Colors.blue,
        ),
      ),
    );
  }
}
