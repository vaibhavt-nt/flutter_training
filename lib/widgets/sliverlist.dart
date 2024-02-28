import 'package:flutter/material.dart';

class SliverListWidget extends StatefulWidget {
  const SliverListWidget({super.key});

  @override
  State<SliverListWidget> createState() => _SliverListWidgetState();
}

class _SliverListWidgetState extends State<SliverListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('SliverList Widget'),
            
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              child: Container(
                color: Colors.orange[100*(index% 12+1)],
                height: 60,
                alignment: Alignment.center,
                child: Text('List item $index'),

              ),
            );
          },
          childCount: 10
          ))
        ],
      ),
    );
  }
}
