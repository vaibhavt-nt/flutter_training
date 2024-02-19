import 'package:flutter/material.dart';

class Flutter_logo extends StatelessWidget {
  const Flutter_logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          color: Colors.white,
          padding: EdgeInsets.all(3),
          /** FlutterLogo Widget **/
          child: FlutterLogo(
            size: 10,
          ), //FlutterLogo
        ), //Container
        title: Text('GeeksforGeeks'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: true,
      ), //AppBar
      body: Center(
        child: Container(
          /** FlutterLogo Widget **/
          child: FlutterLogo(
            size: 100,
            duration: Duration(seconds: 1),
            curve: Curves.easeIn,
            textColor: Colors.amber,
            style: FlutterLogoStyle.stacked,
          ), //FlutterLogo
        ), //Container
      ), //Center
    ) ;
  }
}
