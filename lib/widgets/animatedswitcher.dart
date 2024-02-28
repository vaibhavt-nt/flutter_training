import 'package:flutter/material.dart';

class AnimatedSwitcherExample extends StatefulWidget {
  @override
  _AnimatedSwitcherExampleState createState() =>
      _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  bool _showFirst = true; // Track which widget to display

  void _toggleWidgets() {
    setState(() {
      _showFirst = !_showFirst; // Toggle between two widgets
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedSwitcher Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: Duration(seconds: 1), // Animation duration
              child: _showFirst
                  ? Container(
                key: ValueKey<int>(1), // Unique key for the first widget
                width: 200,
                height: 200,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Widget 1',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
                  : Container(
                key: ValueKey<int>(2), // Unique key for the second widget
                width: 200,
                height: 200,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Widget 2',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleWidgets,
              child: Text('Toggle Widgets'),
            ),
          ],
        ),
      ),
    );
  }
}