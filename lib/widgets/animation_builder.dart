import 'package:flutter/material.dart';

class AnimationBuilderWidget extends StatefulWidget {
  const AnimationBuilderWidget({super.key});

  @override
  State<AnimationBuilderWidget> createState() => _AnimationBuilderWidgetState();
}

class _AnimationBuilderWidgetState extends State<AnimationBuilderWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(seconds: 10),
        vsync: this);
    animation=Tween(end: 1000.0,begin: 5.0).animate(_controller);
    _controller.forward();

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animation Builder'),),
      body:  AnimatedBuilder(animation: _controller, builder: (context, child) {
        return Center(
          child: Container(
            width: animation.value,
            height: animation.value,
            child: Image(image: NetworkImage('https://images.unsplash.com/photo-1708133244186-62a9a489b114?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2M3x8fGVufDB8fHx8fA%3D%3D'))
          ),
        );
      },),
    );
  }
}
