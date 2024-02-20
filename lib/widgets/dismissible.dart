import 'package:flutter/material.dart';

GlobalKey _key = GlobalKey();

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {

  List<String> items = List.generate(10, (index) => 'Items ${index+1}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dismissible Widget example'),),
      body: ListView.builder(itemBuilder: (context, index) {
        final item =items[index];
         return Dismissible(key: Key(item),

             onDismissed: (direction) {
               setState(() {
                 items.removeAt(index);
                 ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(content: Text('Deleted $item'),
                       action: SnackBarAction(label: "UNDO", onPressed: () {
                         setState(() {
                           items.insert(index, item);
                         });
                       },),

                     )
                 );

               });

               // ScaffoldMessenger.of(context).showSnackBar(
               //   SnackBar(content: Text('$item dismmised'))
               // );
             },
             background: Container(
               color: Colors.red,
               child: Icon(Icons.delete,
               color: Colors.white,
                 size: 40,

               ),
               alignment: Alignment.centerRight,
               padding: EdgeInsets.only(right: 20),

             ),

             child: ListTile(
               title: Text(item),
             ));

      },
        itemCount: items.length,

      ),
    );
  }
}
