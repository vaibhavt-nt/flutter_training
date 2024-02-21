import 'package:flutter/material.dart';

class AlertDialogBox_Widget extends StatefulWidget {
  const AlertDialogBox_Widget({super.key});

  @override
  State<AlertDialogBox_Widget> createState() => _AlertDialogBox_WidgetState();
}

class _AlertDialogBox_WidgetState extends State<AlertDialogBox_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AlertDialog Box Widget Example'),),
      body: Center(
        child: ElevatedButton(onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(' alertdialog box '),
                content: Text('this is  alertdialog box example'),
                actions: [
                  TextButton(onPressed: () => Navigator.pop(context),
                      child: Text('okk'))

                ],

              )
          );
        }, child: Text('click to show alert dialog box')),
      ),
    );
  }
}
