import 'package:flutter/material.dart';

class List_Wheel_Scroll_View_Widget extends StatefulWidget {
  const List_Wheel_Scroll_View_Widget({super.key});

  @override
  State<List_Wheel_Scroll_View_Widget> createState() => _List_Wheel_Scroll_View_WidgetState();
}

class _List_Wheel_Scroll_View_WidgetState extends State<List_Wheel_Scroll_View_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListWheelscrollViewWidget Example'),
      ),
      body: Center(
        child: ListWheelScrollView(
            itemExtent: 500,
            clipBehavior: Clip.antiAlias,
            physics: BouncingScrollPhysics(),
            magnification: 1000,
            offAxisFraction: .5,
            overAndUnderCenterOpacity: 1,
            diameterRatio: .8,
            scrollBehavior: MaterialScrollBehavior(),
            // onSelectedItemChanged: (value) {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(),));
            // },
            children: [
          Image(image: NetworkImage('https://images.unsplash.com/photo-1705154749925-a6b3cdaa4fe5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHx8')
          ),
          Image(image: NetworkImage('https://images.unsplash.com/photo-1708506752615-62e1d678a372?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHx8')
          ),
          Image(image: NetworkImage('https://images.unsplash.com/photo-1708342858256-4a27f1d0aaee?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
          ),
          Image(image: NetworkImage('https://plus.unsplash.com/premium_photo-1701172277688-32d05010526a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8fA%3D%3D')
          ),
          Image(image: NetworkImage('https://images.unsplash.com/photo-1707789432420-dd6a98cb652a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNHx8fGVufDB8fHx8fA%3D%3D')
          ),
          Image(image: NetworkImage('https://images.unsplash.com/photo-1707343846292-0c11438d145f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2MXx8fGVufDB8fHx8fA%3D%3D')
          ),
          Image(image: NetworkImage('https://images.unsplash.com/photo-1682687981603-ae874bf432f2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw3Nnx8fGVufDB8fHx8fA%3D%3D')
          ),
          Image(image: NetworkImage('https://images.unsplash.com/photo-1704829340902-b14fb8c8c29e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3OHx8fGVufDB8fHx8fA%3D%3D')
          ),
          Image(image: NetworkImage('https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNhcnN8ZW58MHx8MHx8fDA%3D')
          ),
          Image(image: NetworkImage('https://images.unsplash.com/photo-1513036191774-b2badb8fcb76?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNhcnN8ZW58MHx8MHx8fDA%3D')
          )
        ]),
      ),
    );
  }
}

Widget DetailScreen(){
  return Scaffold(
    appBar: AppBar(),

  );
}