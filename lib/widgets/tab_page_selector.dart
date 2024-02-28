import 'package:flutter/material.dart';

List<Widget>widgets = const [
  Image(image: NetworkImage('https://media.istockphoto.com/id/1487972668/photo/artificial-neural-network-abstract-technology-background.jpg?s=612x612&w=is&k=20&c=5mf5ryXLF4vvzbZx6bnYIZw3d5W3b2VYz851FyrKGug=')),
  Icon(Icons.home),
  Icon(Icons.settings),
  Icon(Icons.cabin)
];

class TabPageSelecor extends StatefulWidget {
  const TabPageSelecor({super.key});

  @override
  State<TabPageSelecor> createState() => _TabPageSelecorState();
}

class _TabPageSelecorState extends State<TabPageSelecor>
with SingleTickerProviderStateMixin{

  late final TabController tabController;
  int index =0;


  @override
  void initState(){
    super.initState();
    tabController=TabController(length: widgets.length, vsync: this);
  }

  @override
  void dispose(){
   tabController.dispose();
   super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              TabBarView(children: widgets,
              controller: tabController,),
              Positioned(
                bottom: 30,
                child: TabPageSelector(
                  controller: tabController,
                  color: Colors.white38,

                ),)
            ],
          ),
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],


      ),
      // floatingActionButton: ButtonBar(
      //   children: [
      //     FloatingActionButton.small(
      //       onPressed: () {
      //         index = (index + 1) % 3;
      //       // (_index != widgets.length - 1) ? _index++ : _index=0;
      //       tabController.animateTo(index);
      //     },
      //     child: const Icon(Icons.navigate_next),
      //     hoverElevation: 0,
      //     elevation: 0,)
      //   ],
      // ),
    );
  }
}
