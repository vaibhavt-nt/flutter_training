import 'package:flutter/material.dart';

class IndexStackWidget extends StatefulWidget {
  const IndexStackWidget({super.key});

  @override
  State<IndexStackWidget> createState() => _IndexStackWidgetState();
}

class _IndexStackWidgetState extends State<IndexStackWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexStackWidget Example'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  child: Text('Stack 1')
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  child: Text('Stack 1')
              ),
            ],
          ),
          IndexedStack(
            index: currentIndex,
            children: [
              Container(
                height: 300,
                width: 300,
                 color:Colors.red,
                child: Text("stack 1"),
              ),
              Container(
                height: 300,
                width: 300,
                color:Colors.green,
                child: Text("stack 2"),
              )

            ],
          )
        ],
      ),
    );
  }
}
