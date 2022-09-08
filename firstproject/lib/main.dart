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
      home: Scaffold(
        appBar: AppBar(
          title: Text("sample App Bar"),
        ),
            body:
            Center(
              child: FlatButton(onPressed: (){}, color: Colors.green,
                padding: EdgeInsets.all(15.0),
                child: Text("click me"),
              ),
            ),
      ),
      );
  }
}
