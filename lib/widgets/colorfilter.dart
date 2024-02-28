import 'package:flutter/material.dart';

class ColorsFilterWidget extends StatelessWidget {
  const ColorsFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ColorFilter Widget Exmple'),),
      body: Center(
        child: ColorFiltered(colorFilter: ColorFilter.mode(Colors.lightGreenAccent, BlendMode.darken),
        child: Image(image: NetworkImage('https://images.unsplash.com/photo-1706883376007-95963191784e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
        ),
      ),
    );
  }
}
