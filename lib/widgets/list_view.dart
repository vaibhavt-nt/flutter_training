import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('list view'),),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSROswPV1CJOYAFtA8r9dInoYqmXJ6fTjYG2A&usqp=CAU')),
            Text('$str',style: TextStyle(fontSize: 20),
            )
          ],
        )

      ),
    );
  }
}

final String str= '''Constructor of ListView Class:
ListView(
{Key key,
Axis scrollDirection: Axis.vertical,
bool reverse: false,
ScrollController controller,
bool primary,
ScrollPhysics physics,
bool shrinkWrap: false,
EdgeInsetsGeometry padding,
double itemExtent,
bool addAutomaticKeepAlives: true,
bool addRepaintBoundaries: true,
bool addSemanticIndexes: true,
double cacheExtent,
List<Widget> children: const <Widget>[],
int semanticChildCount,
DragStartBehavior dragStartBehavior: DragStartBehavior.start,
ScrollViewKeyboardDismissBehavior keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
String restorationId,
Clip clipBehavior: Clip.hardEdge}
)
''';