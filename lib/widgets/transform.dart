import 'package:flutter/material.dart';

class TransformWidget extends StatelessWidget {
  const TransformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        top: true,
        minimum: EdgeInsets.all(50),
        child: Center(
          child: Column(
            children: [
              Transform.rotate(angle: 30,
              child: Text('transform rotate example'),)
            ],
          ),
        ),
      ),

    );
  }
}
