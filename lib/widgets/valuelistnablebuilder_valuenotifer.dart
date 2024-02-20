import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ValueListenableBuilderWidget extends StatefulWidget {
  static ValueNotifier valueNotifier = ValueNotifier("");
  const ValueListenableBuilderWidget({super.key, });

  @override
  State<ValueListenableBuilderWidget> createState() => _ValueListenableBuilderWidgetState();
}

class _ValueListenableBuilderWidgetState extends State<ValueListenableBuilderWidget> {

  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ValueListenableBuilderWidget example'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  labelText: "Enter Anything",
                  border: OutlineInputBorder()
                ),
              ),
              ElevatedButton(onPressed: () {
                ValueListenableBuilderWidget.valueNotifier.value = textEditingController.text;

              }, child: Text("Submit data to another widget"))
            ],
          ),
          Divider(height: 10,color: Colors.purpleAccent,endIndent: 10,indent: 30,thickness: 0,),

          ValueListenableBuilder(
            valueListenable: ValueListenableBuilderWidget.valueNotifier,
            builder: (context, value, child) {
              return Text(value);

            },

          )],
      ),
    );
  }
}
