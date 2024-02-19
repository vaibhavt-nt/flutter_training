import 'package:flutter/material.dart';

class slider_widget extends StatefulWidget {
  const slider_widget({super.key});

  @override
  State<slider_widget> createState() => _slider_widgetState();
}

class _slider_widgetState extends State<slider_widget> {
  double _value = 40;
  String _status ='ideal';
  Color _status_color= Colors.black;
  Color bgcolor = Color.fromRGBO(100, 100, 100, 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: Text("Slider widget"),
      ),
      body: Column(
        children: [
          Center(
            child: Slider(
              min: 0.0,
              max: 100,
              value: _value,
              activeColor: Colors.purple,
              divisions: 10,
              label: _value.round().toString(),
              onChanged: (value) {
              setState(() {

                _value=value;
                _status = 'active(${_value.round().toString()})';
                _status_color = Colors.green;
                bgcolor = Color.fromRGBO(10, 20, 30, 2);

              });
            },
              onChangeStart: (value) {
                setState(() {
                  _status = 'Start';
                  _status_color = Colors.orange;
                  bgcolor = Colors.white;
                });
              },
              onChangeEnd: (value) {
                setState(() {
                  _status ="end";
                  _status_color = Colors.red;
                  bgcolor = Colors.green;
                });
              },
            ),
          ),
          Text('Status: $_value',
            style: TextStyle(color: _status_color),)
        ],
      ),
    );
  }
}
