import 'package:flutter/material.dart';

class TableView extends StatelessWidget {
  const TableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TableView'),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),

          child: Table(
            textDirection: TextDirection.ltr,
            border: TableBorder.all(width: 4,color: Colors.black,borderRadius: BorderRadius.circular(4),style: BorderStyle.solid),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                children:[

                  Text('Name',style: TextStyle(fontSize: 30,color: Colors.red),textAlign: TextAlign.center,),
                  Text('Collage',style: TextStyle(fontSize: 30,color: Colors.red),textAlign: TextAlign.center,),
                  Text('Course',style: TextStyle(fontSize: 30,color: Colors.red),textAlign: TextAlign.center,),
                ],

              ),
              TableRow(
                children:[
                  Text('Vaibhav',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                  Text('GLS University',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                  Text('Msc.IT',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),

                ],

              ),
              TableRow(
                children:[
                  Text('Pratham',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                  Text('GU',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                  Text('B.tech',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),

                ],

              ),
              TableRow(
                children:[
                  Text('Daksh',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                  Text('Silver oak',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                  Text('MCA',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),

                ],

              ),
              TableRow(
                children:[
                  Text('Hardik',style: TextStyle(fontSize: 20,),textAlign: TextAlign.center,),
                  Text('parul university',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                  Text('MBA',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),

                ],

              ),
            ],
          ),
        )
      ],),
    );
  }
}
