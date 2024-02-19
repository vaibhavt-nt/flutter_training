import 'package:flutter/material.dart';

class list_view_builder extends StatelessWidget {
  const list_view_builder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('list view builder'),
      
      ),
      body: ListView.builder(itemBuilder: (context, index) {

        return ListTile(
          onTap: () {
            
          },
          title: Text('this is list $index'),
          style:ListTileStyle.list ,
          leading: CircleAvatar(
            radius: 50,
            foregroundImage: NetworkImage('https://images.pexels.com/photos/19450488/pexels-photo-19450488/free-photo-of-a-street-light-is-lit-up-against-a-blue-sky.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),

          ),
          onFocusChange: (value) => true,

        );
      },
      itemCount: 10,
        prototypeItem: IconButton(onPressed: () {
          
        }, icon: Icon(Icons.add)),


      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      ),
    );
  }
}
