import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer'),),
      drawer: Drawer(

        child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) {
          return ListTile(title: Text('this is list$index'),);
        },),
      ),
    );
  }
}
