// import 'package:flutter/material.dart';
//
// class ToolTipWidget extends StatefulWidget {
//   const ToolTipWidget({super.key});
//
//   @override
//   State<ToolTipWidget> createState() => _ToolTipWidgetState();
// }
//
// class _ToolTipWidgetState extends State<ToolTipWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ToolTip Widget Example'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Tooltip(
//               child: Text('This is tooltip text'),
//               height: 100,
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
//               textAlign: TextAlign.start,
//               showDuration: Duration(seconds: 2),
//
//               enableFeedback: true,
//               enableTapToDismiss: true,
//               message: 'Tooltip',
//
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ToolTipWidget extends StatefulWidget {
  @override
  _ToolTipWidgetState createState() => _ToolTipWidgetState();
}

class _ToolTipWidgetState extends State<ToolTipWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tooltip Example"),
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:<Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Tooltip(
                  waitDuration: Duration(seconds: 1),
                  showDuration: Duration(seconds: 2),
                  padding: EdgeInsets.all(5),
                  height: 35,
                  textStyle: TextStyle(
                      fontSize: 15, color: Colors.white, fontWeight: FontWeight.normal),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: Colors.green),
                  message: 'My Account',
                  child: ElevatedButton(
                    onPressed: () {  },
                    child: Icon(
                      Icons.account_box,
                      size: 100,
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Tooltip(
                  message: 'My Account',
                  child: ElevatedButton(
                    onPressed: () {  },
                    child: Icon(
                      Icons.account_box,
                      size: 100,
                    ),
                  )
              ),
            )
          ]
      ),
    );
  }
}
