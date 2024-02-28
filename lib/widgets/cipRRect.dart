import 'package:flutter/material.dart';

class clipRRect_Widget extends StatefulWidget {
  const clipRRect_Widget({super.key});

  @override
  State<clipRRect_Widget> createState() => _clipRRect_WidgetState();
}

class _clipRRect_WidgetState extends State<clipRRect_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('clipRRect Widget'),),
      body: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(image: NetworkImage('https://www.educative.io/api/edpresso/shot/5997380138172416/image/6166153335930880')),
      ),
    );
  }
}
