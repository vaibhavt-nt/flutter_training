import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Expande_Widget extends StatelessWidget {
  const Expande_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("expanded widget"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 100,
              color: Colors.yellow,
              child: Text("this is simple container"),
            ),
            Expanded(
              child: Container(
                width: 400,

                color: Colors.red,
                child: Text("this is expanded contaier"),
              ),
            ),
            Container(
              width: 400,
              height: 100,
              color: Colors.blue,
              child: Text("this is simple container"),
            ),
          ],
        ),
      ),
    );
  }
}
