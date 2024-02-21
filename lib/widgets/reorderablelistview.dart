import 'package:flutter/material.dart';

class ReorderableListView_Widget extends StatefulWidget {
  const ReorderableListView_Widget({super.key});

  @override
  State<ReorderableListView_Widget> createState() => _ReorderableListView_WidgetState();
}

class _ReorderableListView_WidgetState extends State<ReorderableListView_Widget> {

  List items =[
    "Nautilus",
    "Flutter",
    "Developer",
    "Android",
    "Programming",
    "CplusPlus",
    "Python",
    "javascript"
  ];

  void sorting(){
    setState(() {
      items.sort();
    });
  }

  void reorderData(int oldInderx, int newIndex){
        setState(() {
          if(newIndex>oldInderx){
            newIndex -= 1;
          }
          final item = items.removeAt(oldInderx);
          items.insert(newIndex, item);
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ReorderableListView_Widget Example'),),
      body: ReorderableListView(
          children: [
            for (final item in items)
              Card(
                key: ValueKey(item),
                child: ListTile(
                  title: Text(item),
                ),
              )
          ],
          onReorder: reorderData),
    );
  }
}
