import 'package:flutter/material.dart';

class FitterBoxWidget extends StatelessWidget {
  const FitterBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox Example'),
      ),
      body: Center(
        child: Container(
          child: FittedBox(
            child: Icon(Icons.coffee),
          ),
        ),
      ),
    );
  }
}
