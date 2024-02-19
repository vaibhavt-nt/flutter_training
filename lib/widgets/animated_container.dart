import 'dart:math';

import 'package:flutter/material.dart';

class Animeted_Container_Widget extends StatefulWidget {
  const Animeted_Container_Widget({super.key});

  @override
  State<Animeted_Container_Widget> createState() => _Animeted_Container_WidgetState();
}

class _Animeted_Container_WidgetState extends State<Animeted_Container_Widget> {
  double _height = 100;
  double _width =100;
  Color _color = Colors.lightBlue;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          child: Image(
            gaplessPlayback: true,

            fit: BoxFit.fill,
              image: NetworkImage('https://images.unsplash.com/photo-1708200216322-9463ac285552?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
            duration: Duration(seconds: 1),
          height: _height,

          width: _width,

          decoration: BoxDecoration(
              color: _color,
            borderRadius: _borderRadiusGeometry
          ),
          curve: Curves.fastOutSlowIn,

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        setState(() {
          final random = Random();

          _width = random.nextInt(1000).toDouble();
          _height = random.nextInt(1000).toDouble();

          _color = Color.fromRGBO(
              random.nextInt(3000000),
              random.nextInt(3000000),
              random.nextInt(3000000),
              1);

          _borderRadiusGeometry = BorderRadius.circular(random.nextInt(1000).toDouble());

        });
      },),
    );
  }
}
