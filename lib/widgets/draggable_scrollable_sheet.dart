import 'package:flutter/material.dart';


class DraggableScrollableSheetWiidget extends StatefulWidget {
  const DraggableScrollableSheetWiidget({Key? key}) : super(key: key);

  @override
  _DraggableScrollableSheetWiidgetState createState() => _DraggableScrollableSheetWiidgetState();
}

class _DraggableScrollableSheetWiidgetState extends State<DraggableScrollableSheetWiidget> {
  List<String> animalNames = ['Elephant', 'Tiger', 'Kangaroo'];
  List<String> animalFamily = ['Elephantidae', 'Panthera', 'Macropodidae'];
  List<String> animalLifeSpan = ['60-70', '8-10', '15-20'];
  List<String> animalWeight = ['2700-6000', '90-310', '47-66'];
  int selectedTile = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeeksForGeeks'),
      ),
      body: Container(
        child: Stack(
          children: [
            animalsList(),
            bottomDetailsSheet(),
          ],
        ),
      ),
    );
  }

  Widget animalsList() {
    return ListView(
      children: [
        animalListTile(0, animalNames[0]),
        animalListTile(1, animalNames[1]),
        animalListTile(2, animalNames[2]),
      ],
    );
  }

  Widget animalListTile(int index, String animalName) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {
          setState(() {
            selectedTile = index;
          });
        },
        title: Text(
          animalName,
          style: TextStyle(
            color: Colors.brown,
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        tileColor: Colors.lightGreen[300],
        selected: index == selectedTile,
        selectedTileColor: Colors.lightGreen[600],
      ),
    );
  }

  Widget bottomDetailsSheet() {
    return DraggableScrollableSheet(
      initialChildSize: .2,
      minChildSize: .1,
      maxChildSize: .6,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          color: Colors.lightGreen[100],
          child: ListView(
            controller: scrollController,
            children: [
              ListTile(
                title: Text(
                  "NAME",
                ),
                subtitle: Text(
                  animalNames[selectedTile],
                ),
              ),
              ListTile(
                title: Text(
                  "FAMILY",
                ),
                subtitle: Text(
                  animalFamily[selectedTile],
                ),
              ),
              ListTile(
                title: Text(
                  "LIFESPAN",
                ),
                subtitle: Text(
                  animalLifeSpan[selectedTile],
                ),
              ),
              ListTile(
                title: Text(
                  "WEIGHT",
                ),
                subtitle: Text(
                  animalWeight[selectedTile],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
