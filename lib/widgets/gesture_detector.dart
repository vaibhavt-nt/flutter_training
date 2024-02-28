import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/widgets/baseline_widget.dart';

import 'tab_page_selector.dart';

class GestureDetectorPage extends StatelessWidget {
  const GestureDetectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.brown,
        child: MainContent(),
      ),
    );
  }
}

class MainContent extends StatefulWidget {
  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  String dragDirection = '';
  String startDXPoint = '';
  String startDYPoint = '';

  String velocity='';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      dragStartBehavior: DragStartBehavior.start,
      onHorizontalDragStart: _onHorizontalDragStartHandler,
      onVerticalDragStart: _onVerticalDragStartHandler,
      // onHorizontalDragUpdate: _onDragUpdateHandler,
      // onVerticalDragUpdte: _onDragUpdateHandler,
      onHorizontalDragUpdate: _onHorizontalDragUpdateHandler,
      onVerticalDragUpdate: _onVerticalDragUpdateHandler,
      onHorizontalDragEnd: _onDragEnd,
      behavior: HitTestBehavior.translucent,
      onDoubleTap: () {
        print("DOUBLE TAB");
        Navigator.push(context, MaterialPageRoute(builder: (context) => TabPageSelecor()));
      },
      onTap: () {
        print("one tap");
      },
      onLongPress: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => baseline_widget()));
        print("Long press");
      },
      child: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              this.dragDirection,
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Start DX point: ${this.startDXPoint}',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Start DY point: ${this.startDYPoint}',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        )),
      ),
    );
  }

  void _onHorizontalDragStartHandler(DragStartDetails details) {
    setState(() {
      this.dragDirection="HORIZONTAL";
      this.startDXPoint ='${details.globalPosition.dx.floorToDouble()}';
      this.startDYPoint='${details.globalPosition.dy.floorToDouble()}';

    });
  }

  void _onVerticalDragStartHandler(DragStartDetails details) {
    setState(() {
      this.dragDirection='VERTICAL';
      this.startDXPoint='${details.globalPosition.dx.floorToDouble()}';
      this.startDYPoint='${details.globalPosition.dy.floorToDouble()}';
    });
  }

  void _onDragUpdateHandler(DragUpdateDetails details) {
    setState(() {
      this.dragDirection='UPDATING';
      this.startDXPoint='${details.globalPosition.dx.floorToDouble()}';
      this.startDYPoint='${details.globalPosition.dy.floorToDouble()}';
    });
  }

  void _onHorizontalDragUpdateHandler(DragUpdateDetails details) {
    setState(() {
      this.dragDirection = "HORIZONTAL UPDATING";
      this.startDXPoint = '${details.globalPosition.dx.floorToDouble()}';
      this.startDYPoint = '${details.globalPosition.dy.floorToDouble()}';
      // this.velocity = '';
    });
  }

  void _onVerticalDragUpdateHandler(DragUpdateDetails details) {
    setState(() {
      this.dragDirection = "VERTICAL UPDATING";
      this.startDXPoint = '${details.globalPosition.dx.floorToDouble()}';
      this.startDYPoint = '${details.globalPosition.dy.floorToDouble()}';
      // this.velocity = '';
    });
  }

  void _onDragEnd(DragEndDetails details) {
    double result = details.velocity.pixelsPerSecond.dx.abs().floorToDouble();
    setState(() {
        this.velocity ='$result';
    });
  }
}

// void _onDragEnd(DragEndDetails details) {
//   set
//
//   // double result = details.velocity.pixelsPerSecond.dx.abs().floorToDouble();
//
// }