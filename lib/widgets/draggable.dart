import 'dart:ui';

import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  const DraggableWidget({super.key});

  @override
  State<DraggableWidget> createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Color caughtColor= Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DraggableWidget'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Draggable(
            data: Colors.orangeAccent,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.orangeAccent,
                child: Text("Drag me"),
              ),
              feedback: Container(
                height: 150,
                width: 150,
                color:  Colors.orangeAccent.shade100,
                child: Text('Drag'),
              ),
            onDraggableCanceled: (velocity, offset) {

            },

          ),
          DragTarget(
              onAccept: (Color color) {
                caughtColor = color;
              }, builder: (
              BuildContext context,
              List < dynamic > accepted,
              List < dynamic > rejected,
              ) {
            return Container(
              width: 200,
              height: 200,
              color: accepted.isEmpty ? caughtColor : Colors.grey.shade200,
              child: const Center(
                child: Text('Drag here'),
              ),
            );
          }
          )

        ],
      ),
    );
  }
}
