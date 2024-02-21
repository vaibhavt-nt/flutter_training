import 'package:flutter/material.dart';

class TweenAnimationBuilder extends StatefulWidget {
  const TweenAnimationBuilder({Key? key, required Tween<double> tween, required Duration duration, required IconButton Function(BuildContext context, double size, Widget? child) builder}) : super(key: key);

  @override
  State<TweenAnimationBuilder> createState() => _TweenAnimationBuilderState();
}

class _TweenAnimationBuilderState extends State<TweenAnimationBuilder> {
  double targetValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // creating an Appbar 
        appBar: AppBar(
          title: Text("GeeksforGeeks"),
          centerTitle: true,
        ),
        body: Center(
          // Using TweenAnimationBuilder Widget 
          child: TweenAnimationBuilder(
            // Tween of double type with begin and the end 
            tween: Tween<double>(begin: 0, end: targetValue),
            duration: Duration(
                milliseconds: 500), // duration which is required parameter 
            // builder function that helps build the animation 
            builder: (BuildContext context, double size, Widget? child) {
              return IconButton(
                iconSize: size,
                color: Colors.orangeAccent,
                icon: Icon(Icons.flutter_dash),
                onPressed: () {
                  setState(() {
                    // Logic 
                    // targetValue if equal to 100 then make 
                    // icon size big to 250 else make it small to 100 
                    targetValue = targetValue == 100 ? 250 : 100;
                  });
                },
              );
            },
          ),
        ));
  }
} 
