import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool value =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkbox widget Example'),),
      body: Card(
        child: Column(
          children: [
            Row(
              children: [
                Text('This is checkBox'),
                Checkbox(value: this.value, onChanged: (value) {
                  setState(() {
                    this.value=value!;
                  });
                },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
