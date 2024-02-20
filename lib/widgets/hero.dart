import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Wiget'),),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DestinationPage(),));
          },
          child: Hero(


              tag: 'This is hero tag',
              child:
              Image(image: NetworkImage('https://images.unsplash.com/photo-1708227739774-12a214145d81?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8fA%3D%3D'))
          ),
        ),
      ),
    );
  }
}

class DestinationPage extends StatelessWidget {
  const DestinationPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('back'),),
      body: Container(
        height: 500,
        width: 500,
        child: Hero(tag: 'This is hero tag', child:
        Image(image: NetworkImage('https://images.unsplash.com/photo-1708227739774-12a214145d81?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8fA%3D%3D'))
      
        ),
      ),
    );
  }
}
