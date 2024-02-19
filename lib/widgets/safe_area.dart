import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Safe_area_Widget extends StatelessWidget {
  const Safe_area_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("without safe area example"),
          SafeArea(
              bottom: true,
              top: true,
              right: true,
              left: true,
              maintainBottomViewPadding: true,
              minimum: EdgeInsets.all(10),
              child: Text("With SafeArea Widget Example text"))
        ],
      ),
    );
  }
}
