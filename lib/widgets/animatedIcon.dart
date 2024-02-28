import 'dart:ffi';

import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with SingleTickerProviderStateMixin {
  bool isClicked = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(milliseconds: 500), vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedIcon Widget Example'),
      ),
      body: Center(
        child: IconButton(
            iconSize: 100,
            onPressed: () {
              if (isClicked) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
              isClicked = !isClicked;
            },
            icon: AnimatedIcon(
                icon: AnimatedIcons.list_view, progress: _controller)),
      ),
    );
  }
}
