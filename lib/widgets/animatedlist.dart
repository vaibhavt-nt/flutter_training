import 'package:flutter/material.dart';

class AnimatedListWidget extends StatefulWidget {
  const AnimatedListWidget({super.key});

  @override
  State<AnimatedListWidget> createState() => _AnimatedListWidgetState();
}

class _AnimatedListWidgetState extends State<AnimatedListWidget> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10'
  ];

  void _addItem() {
    final newIndex = _items.length;
    final newItem = "Item ${newIndex + 1}";

    setState(() {
      _items.add(newItem);
    });

    _listKey.currentState!.insertItem(newIndex);
  }

  void _removeItem(int index) {
    final removeItem = _items[index];

    setState(() {
      _items.removeAt(index);
    });

    _listKey.currentState!.removeItem(
        index,
        (context, animation) =>
            buildItem(removeItem, animation));
  }
  Widget buildItem(String item,Animation<double>animation){
       return SizeTransition(
         sizeFactor: animation,
       child: ListTile(
           title: Text(item),
         trailing: IconButton(onPressed: () {
           _removeItem(_items.indexOf(item));
         }, icon: Icon(Icons.delete),color: Colors.red,),
       ),
       );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedListWidget example'),

      ),
      body: AnimatedList(
        itemBuilder: (context, index, animation) {
        return buildItem(_items[index], animation);
      },
      key: _listKey,
        initialItemCount: _items.length,
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {
        _addItem();
      },
      child: Icon(Icons.add),),
    );
  }
}
