import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackDropFilter_Widget extends StatefulWidget {
  const BackDropFilter_Widget({super.key});

  @override
  State<BackDropFilter_Widget> createState() => _BackDropFilter_WidgetState();
}

class _BackDropFilter_WidgetState extends State<BackDropFilter_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BackDropFilter Widget Example'),),
      body: Stack(
        children: [
          Image(
            fit: BoxFit.fill,
            image: NetworkImage(
              'https://images.unsplash.com/photo-1708366700170-f2e3043a70dd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8fA%3D%3D'),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10) ,
            child: Container(
              alignment: Alignment.center,
              child: Text('This is example of \n backDrop Filter',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40
              ),),
            ),
          )
        ],
      ),
    );
  }
}
