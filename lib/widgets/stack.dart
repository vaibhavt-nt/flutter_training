import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              alignment: AlignmentDirectional.bottomCenter,
              child: Text("1",textAlign: TextAlign.center,style: TextStyle(
                fontSize: 30
              ),),
              color: Colors.green,
              height: 300,
              width: 300,
            ),
            Container(
              alignment: AlignmentDirectional.bottomCenter,
              child: Text("2",textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 30
              ),),
              color: Colors.blue,
              height: 200,
              width: 200,
            ),
            Container(
              alignment: AlignmentDirectional.center,
              child: Text("3",textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 30
              ),),
              color: Colors.red,
              height: 100,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}
