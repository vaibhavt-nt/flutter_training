import 'package:flutter/material.dart';

enum Gender{Male,Female,Other}

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({super.key});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {

  // Gender _male = Gender.Male;
  // Gender _female = Gender.Female;
  // Gender _other = Gender.Other;
   int _gender =1;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Male"),
            leading: Radio(
              activeColor: Colors.pink,
              hoverColor: Colors.white,
              splashRadius: 25,
              focusColor: Colors.green,
              value: 1,
              groupValue: _gender,
              onChanged: (value) {
              setState(() {
                _gender=value!;
              });
            },

            ),
          ),
          ListTile(
            title: Text("Female"),
            leading: Radio(
              activeColor: Colors.pink,
              hoverColor: Colors.white,
              splashRadius: 25,
              focusColor: Colors.green,
              value: 2,
              groupValue: _gender,
              onChanged: (value) {
                setState(() {
                  _gender=value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text("Other"),
            leading: Radio(
              activeColor: Colors.pink,
              hoverColor: Colors.white,
              splashRadius: 25,
              focusColor: Colors.green,
              value: 3,
              groupValue: _gender,
              onChanged: (value) {
                setState(() {
                  _gender=value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
