import 'package:flutter/material.dart';

class sab extends StatelessWidget {
  const sab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(

              clipBehavior: Clip.antiAlias,
              primary: true,
              elevation: 10,
              // bottom: TabBar(tabs: List.of([]),controller: ,),
              title: Text('SliverAppBar'),
              backgroundColor: Colors.white38,
              leading: Icon(Icons.menu,),
              centerTitle: true,
              shape: ShapeBorder.lerp(InputBorder.none, LinearBorder.none, BouncingScrollSimulation.maxSpringTransferVelocity),
              iconTheme: IconThemeData(color: Colors.purple,),
              automaticallyImplyLeading: true,
              expandedHeight: 10,
              floating: true,
              foregroundColor: Colors.lightBlue,
              flexibleSpace: FlexibleSpaceBar.createSettings(
                  currentExtent: CircularProgressIndicator.strokeAlignCenter,
                  child: Icon(Icons.icecream_outlined)

              
              
              ),
              pinned: true,
              shadowColor: Colors.purple,


            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => ListTile(
                  tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                  title: Center(
                    child: Text('$index',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 50,
                            color: Colors.greenAccent[400]) //TextStyle
                    ), //Text
                  ), //Center
                ), //ListTile
                childCount: 51,
              ), //SliverChildBuildDelegate
            ) //SliverList
          ],
        ),
      ),

    );
  }
}
