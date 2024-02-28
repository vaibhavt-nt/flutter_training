import 'package:flutter/material.dart';

class CustomPaintWidget extends StatefulWidget {
  const CustomPaintWidget({super.key});

  @override
  State<CustomPaintWidget> createState() => _CustomPaintWidgetState();
}

class _CustomPaintWidgetState extends State<CustomPaintWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Paint Widget Example'),
      ),
      body: Center(
        child: CustomPaint(
          size: Size(20, 17),
          painter: MyPainter(),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var center = size / 2;
    var paint = Paint()..color = Colors.yellow;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(center.width, center.height),
        width: 300,
        height: 300,
      ),
      0.4,
      2 * 3.14 - 0.8,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}

// class Rectangle extends CustomPainter {
//   bool? isFilled;
//   Rectangle({this.isFilled});
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint();
//     paint.color = Colors.blue;
//     if(isFilled != null){
//       paint.style = PaintingStyle.fill;
//     }
//     else {
//       paint.style = PaintingStyle.stroke;
//     }
//     paint.strokeCap = StrokeCap.round;
//     paint.strokeJoin = StrokeJoin.round;
//     paint.strokeWidth = 5;
//     Offset offset = Offset(size.width * 0.5, size.height);
//
//     Rect rect = Rect.fromCenter(center: offset, width: 50, height: 50);
//     canvas.drawRect(rect, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant Rectangle oldDelegate) {
//     return false;
//   }
// }