import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(title: Text('Tab Bar'),
        bottom: TabBar(

            tabs: [
          Tab(icon: Icon(Icons.home),),
          Tab(icon: Icon(Icons.add_shopping_cart),),
          Tab(icon: Icon(Icons.settings),),

        ]),
      ),
      body: TabBarView(children: [
        Icon(Icons.home,size: 350,color: Colors.yellow,),
        Icon(Icons.add_shopping_cart,size: 350,color: Colors.yellow,),
        Icon(Icons.settings,size: 350,color: Colors.yellow,)
      ]),
    ));
  }
}
