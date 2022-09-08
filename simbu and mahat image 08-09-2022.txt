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
         body: Center(
           child: Container(
             height: 200,
             width: 300,
             decoration: BoxDecoration(
               border: Border.all(width: 2.0),
               borderRadius: BorderRadius.circular(5.0),
                 image: DecorationImage(
                   image: NetworkImage(
                  'https://www.pinkvilla.com/imageresize/simbu_mahat_meeting.jpeg?width=752&t=pvorg'
                 ),
                   fit: BoxFit.cover,
                 ),
             ),
             child: Center(
               child: Text("Simbu and Mahat", style: TextStyle(
                 color: Colors.white, fontSize: 20.0,
               ),),
             )
             ),
           ),
         ),
      );

  }
}
