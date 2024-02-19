import 'package:flutter/material.dart';

class Opacit_widget extends StatelessWidget {
  const Opacit_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity Widget"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Opacity(
              opacity: 1,
              alwaysIncludeSemantics: true,
              child: SizedBox(
                height: 300,
                width: 600,
                child: Image(
                    image: NetworkImage('https://images.unsplash.com/photo-1700937244987-92488ab2ada5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8fA%3D%3D')),
              ),
            ),
            Opacity(
              opacity: 0.5,
              alwaysIncludeSemantics: true,
              child: SizedBox(
                height: 300,
                width: 600,
                child: Image(
                    image: NetworkImage('https://images.unsplash.com/photo-1700937244987-92488ab2ada5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8fA%3D%3D')),
              ),
            ),
            Opacity(
              opacity: 0.25,
              alwaysIncludeSemantics: true,
              child: SizedBox(
                height: 300,
                width: 600,
                child: Image(
                    image: NetworkImage('https://images.unsplash.com/photo-1700937244987-92488ab2ada5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8fA%3D%3D')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

