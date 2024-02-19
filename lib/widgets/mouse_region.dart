import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  String title;
  MyHomePage({required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String status = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Mouse Status : $status'),
            SizedBox(
              height: 30,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              opaque: false,
              onEnter: (s) {
                setState(() {
                  status = 'Mouse Entered in region';
                });
              },
              onHover: (s) {
                setState(() {
                  status = 'Mouse hovering on region';
                });
              },
              onExit: (s) {
                setState(() {
                  status = 'Mouse exit from region';
                });
              },
              child: Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: Colors.blueAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}