import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayOutBuilderWidget extends StatefulWidget {
  const LayOutBuilderWidget({super.key});

  @override
  State<LayOutBuilderWidget> createState() => _LayOutBuilderWidgetState();
}

class _LayOutBuilderWidgetState extends State<LayOutBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height *0.5,
              width: MediaQuery.of(context).size.width,

              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if(constraints.maxWidth>=500){
                    return   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: constraints.maxHeight,
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          color: Colors.pinkAccent,
                          child: Text('Left side'),
                        ),
                        Container(
                          height: constraints.maxHeight,
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          color: Colors.lightBlue,
                          child: Text('Right side'),
                        ),
                      ],
                    );
                  } else{
                    return Container(
                      alignment: Alignment.center,
                      height: constraints.maxHeight * 0.5,
                      color: Colors.green,
                      child: Text('Normal Screen'),
                    );
                  }
                },

              ),
            ),
          )
      ),
    );
  }
}
