import 'package:flutter/material.dart';

class page_view extends StatefulWidget {
  @override
  _page_viewState createState() => _page_viewState();
}

class _page_viewState extends State<page_view> {

  PageController controller=PageController();
  List<Widget> _list=<Widget>[
    new Center(child:new Pages(text: "Page 1",)),
    new Center(child:new Pages(text: "Page 2",)),
    new Center(child:new Pages(text: "Page 3",)),
    new Center(child:new Pages(text: "Page 4",))
  ];
  int _curr=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar:AppBar(
          title: Text("PageView"),
          backgroundColor: Color(0xFFF6C9C9),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                "Page: "+(
                    _curr+1).toString()+"/"+_list.length.toString(),textScaleFactor: 2,),
            )
          ],),
        body: PageView(
          children:
          _list,
          scrollDirection: Axis.horizontal,

          // reverse: true,
          // physics: BouncingScrollPhysics(),
          controller: controller,
          onPageChanged: (num){
            setState(() {
              _curr=num;
            });
          },
        ),
        floatingActionButton:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _list.add(
                        new Center(child: new Text(
                            "New page", style: new TextStyle(fontSize: 35.0))),
                      );
                    });
                    if(_curr!=_list.length-1)
                      controller.jumpToPage(_curr+1);
                    else
                      controller.jumpToPage(0);
                  },
                  child:Icon(Icons.add)),
              FloatingActionButton(
                  onPressed: (){
                    _list.removeAt(_curr);
                    setState(() {
                      controller.jumpToPage(_curr-1);
                    });
                  },
                  child:Icon(Icons.delete)),
            ]
        )
    );
  }
}

class Pages extends StatelessWidget {
  final text;
  Pages({this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text(text,textAlign: TextAlign.center,style: TextStyle(
                fontSize: 30,fontWeight:FontWeight.bold),),
          ]
      ),
    );
  }
}
