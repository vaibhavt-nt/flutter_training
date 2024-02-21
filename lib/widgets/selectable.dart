import 'package:flutter/material.dart';

class SelectableTextWidget extends StatelessWidget {
  const SelectableTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Selecatable text'),),
      body: Center(
        child: SelectableText(
          'This is selecable text'
        ),
      ),
    );
  }
}
