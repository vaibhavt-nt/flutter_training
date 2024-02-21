import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  @override
  _AnimatedPositionedExampleState createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool _isLeft = true;

  // Function to toggle the position of the animated widget
  void _togglePosition() {
    setState(() {
      _isLeft = !_isLeft;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositioned Example'),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            // AnimatedPositioned widget to create the animated transition
            AnimatedPositioned(
              duration: Duration(seconds: 1), // Animation duration
              left: _isLeft ? 50 : 150, // Change the left position based on the _isLeft state
              top: 50, // Fixed top position
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      // Floating action button to trigger the position toggle
      floatingActionButton: FloatingActionButton(
        onPressed: _togglePosition, // Call _togglePosition when pressed
        child: Icon(Icons.swap_horiz), // Icon to display on the button
      ),
    );
  }
}