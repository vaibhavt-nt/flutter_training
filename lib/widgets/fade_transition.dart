import 'package:flutter/material.dart';

class FadeTranstionWidget extends StatefulWidget {
  const FadeTranstionWidget({super.key});

  @override
  State<FadeTranstionWidget> createState() => _FadeTranstionWidgetState();
}

class _FadeTranstionWidgetState extends State<FadeTranstionWidget>
    with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation _animation;
  late CurvedAnimation curvedAnimation;


  @override
  void initState() {

    _animationController=AnimationController(vsync: this,duration: Duration(milliseconds:500 ));

    curvedAnimation=CurvedAnimation(parent: _animationController, curve: Curves.easeIn);

    _animation = Tween(
      begin: 0.0 ,
      end: 1.0 ,
    ).animate(curvedAnimation);

    _animation.addStatusListener((status) {
      if(status == AnimationStatus.completed)
        _animationController.reverse();
      else if (status ==AnimationStatus.dismissed)
        _animationController.forward();
    });

    super.initState();
  }

  @override
  void dispose() {

    _animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      appBar: AppBar(
        title: Text("FadeTransition Widget Example"),
      ),
      body: Center(
        child: FadeTransition(opacity: _animationController,
          child: Icon(Icons.favorite,
          color: Colors.red,
          size: 300,),
        ),
      ),
      floatingActionButton: SafeArea(
        bottom: true,
        maintainBottomViewPadding: true,

        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            FloatingActionButton(
              child: Icon(Icons.play_circle,color: Colors.green,),
              onPressed: () {
              setState(() {
                _animationController.forward();
              });
            },),

            FloatingActionButton(
              child: Icon(Icons.stop_circle,color: Colors.red,),
              onPressed: () {
              setState(() {
                _animationController.stop();
              });
            },),
          ],
        ),
      ),
    );
  }
}

