import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatefulWidget {
  const StreamBuilderWidget({super.key});

  @override
  State<StreamBuilderWidget> createState() => _StreamBuilderWidgetState();
}

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {
  late StreamController<int> streamController ;

  @override
  void initState() {
    // TODO: implement initState
    streamController=StreamController<int>();
    _startAddingNumber();
    super.initState();
  }

  void _startAddingNumber()async{
    for (int i=0; i<10; i++) {
      await Future.delayed(Duration(seconds: 2));
      streamController.sink.add(i);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(stream: streamController.stream, builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting){
            return CircularProgressIndicator();
          } else if(snapshot.hasError){
            return Text('Error : ${snapshot.error}');
          } else if (!snapshot.hasData){
            return Text("No data availabe");
          }else {
            return Text('Latest Number ${snapshot.data},',
            style: TextStyle(fontSize: 24),);
          }
        },),
      ),
    );
  }
}
