import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({super.key});

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  late TransformationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TransformationController();
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wrap Widget'),),
      body:
      Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment:WrapAlignment.spaceEvenly ,
        spacing: 30,
        verticalDirection:VerticalDirection.down ,
        direction: Axis.horizontal,
        runSpacing: 30,

        children: [
         GestureDetector(
           onDoubleTap: () {
             final double scale =3;
             final zoom = Matrix4.identity()..scale(scale);

             final value = zoom;
             controller.value = value;
           },
           child:  InteractiveViewer(
             clipBehavior: Clip.none,
             transformationController: controller,
             child: Image(fit: BoxFit.fill,image: NetworkImage(
                 'https://media.istockphoto.com/id/1194408359/photo/india-flag-flying-high-blue-sky-tricolour-flag.jpg?s=2048x2048&w=is&k=20&c=Pcb64PJN_Xo7AEVnZRO3tyx4ZiToYpjPaoEwh7MbbpQ=')),
           )

         ),
          Container(
            height: 100,
            width: 100,
            child:
            ColoredBox(color: Colors.cyan),

          ),
          Container(
            height: 100,
            width: 100,
            child:
            ColoredBox(color: Colors.cyan),

          ),
          Container(
            height: 100,
            width: 100,
            child:
            ColoredBox(color: Colors.cyan),

          ),
          AboutDialog(children: [
            TextButton(onPressed: () {
              showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime(2050));
            }, child: Text('click me'))
          ],)
        ],
      ),
    );
  }
}

class ImageviewPage extends StatelessWidget {
  const ImageviewPage({super.key});


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

