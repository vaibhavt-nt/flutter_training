import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class grideview extends StatelessWidget {
  const grideview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('grideview')),
      body: LayoutBuilder(builder: (context, constraints) {
        return GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: constraints.maxWidth > 700 ? 4 : 1,
            crossAxisSpacing: 5,
            mainAxisExtent: 200,
            childAspectRatio: 20
        ),

          children: [
            Image(image: NetworkImage('https://images.freeimages.com/images/large-previews/56d/peacock-1169961.jpg?fmt=webp&w=500')),
            Image(image: NetworkImage('https://images.freeimages.com/images/large-previews/3cb/the-treasure-1203251.jpg?fmt=webp&w=500')),
            Image(image: NetworkImage('https://images.freeimages.com/images/large-previews/83f/paris-1213603.jpg?fmt=webp&w=500')),
            Image(image: NetworkImage('https://images.freeimages.com/images/large-previews/03e/oxford-architecture-1233371.jpg?fmt=webp&w=500')),
            Image(image: NetworkImage('https://images.freeimages.com/images/large-previews/bbb/autumn-in-new-york-5-1360120.jpg?fmt=webp&w=500')),
            Image(image: NetworkImage('https://images.freeimages.com/images/large-previews/bc4/curious-bird-1-1374322.jpg?fmt=webp&w=500')),
            Image(image: NetworkImage('https://images.freeimages.com/images/large-previews/39a/spring-1377434.jpg?fmt=webp&w=500')),
            Image(image: NetworkImage('https://images.freeimages.com/images/large-previews/a8d/artemis-and-apollo-1407733.jpg?fmt=webp&w=500')),
            Image(image: NetworkImage('https://images.freeimages.com/images/large-previews/cf6/jellyfish-1459351.jpg?fmt=webp&w=500')),
            Image(image: NetworkImage('https://images.freeimages.com/images/large-previews/866/butterfly-1-1535829.jpg?fmt=webp&w=500')),
            Image(image: NetworkImage('https://images.freeimages.com/images/large-previews/400/bird-at-zoo-1579028.jpg?fmt=webp&w=500')),


          ],
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          dragStartBehavior: DragStartBehavior.start,
          addRepaintBoundaries: true,
          addAutomaticKeepAlives: true,
          physics: BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
          addSemanticIndexes: true,
          semanticChildCount: 10,
          padding: EdgeInsets.symmetric(horizontal: 1),
          primary: true,
          clipBehavior: Clip.antiAlias,
          reverse: true,
        );
      },),

    );
  }
}
