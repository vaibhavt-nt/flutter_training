import 'package:flutter/material.dart';

class HomePageFututreBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('GeeksforGeeks'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => FutureDemoPage(),
              ),
            ),
            child: Text('Demonstrate FutureBuilder'),
          ),
        ),
      ),
    );
  }
}

class FutureDemoPage extends StatelessWidget {
  /// Function that will return a
  /// "string" after some time
  /// To demonstrate network call
  /// delay of [2 seconds] is used
  ///
  /// This function will behave as an
  /// asynchronous function
  Future<String> getData() {
    return Future.delayed(Duration(seconds: 2), () {
      return "I am data";
      // throw Exception("Custom Error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Future Demo Page'),
        ),
        body: FutureBuilder(
          builder: (ctx, snapshot) {
            // Checking if future is resolved or not
            if (snapshot.connectionState == ConnectionState.done) {
              // If we got an error
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error} occurred',
                    style: TextStyle(fontSize: 18),
                  ),
                );

                // if we got our data
              } else if (snapshot.hasData) {
                // Extracting data from snapshot object
                final data = snapshot.data as String;
                return Center(
                  child: Text(
                    '$data',
                    style: TextStyle(fontSize: 18),
                  ),
                );
              }
            }

            // Displaying LoadingSpinner to indicate waiting state
            return Center(
              child: CircularProgressIndicator(),
            );
          },

          // Future that needs to be resolved
          // inorder to display something on the Canvas
          future: getData(),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// class FutureBuilder_HP extends StatefulWidget {
//   const FutureBuilder_HP({super.key});
//
//   @override
//   State<FutureBuilder_HP> createState() => _FutureBuilder_HPState();
// }
//
// class _FutureBuilder_HPState extends State<FutureBuilder_HP> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("FutureBuilder Home Page"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FutureBuilderPage(),)),
//             child: Text("Load Data From FutureBuilder")),
//       ),
//     );
//   }
// }
//
// class FutureBuilderPage extends StatefulWidget {
//   const FutureBuilderPage({super.key});
//
//   @override
//   State<FutureBuilderPage> createState() => _FutureBuilderPageState();
// }
//
// class _FutureBuilderPageState extends State<FutureBuilderPage> {
//
//   Future<String> getData(){
//     return Future.delayed(Duration(seconds: 1),(){
//       return "I am Data";
//     }
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: getData(),
//         builder: (context, snapshot) {
//         if(snapshot.connectionState== ConnectionState.done){
//           if(snapshot.hasError){
//             return Center(
//               child: Text('${snapshot.error}occurted'),
//             );
//           }
//         }
//         else if (snapshot.hasData){
//           final data = snapshot.data as String;
//           return Center(
//             child: Text('$data',
//             ),
//           );
//         }
//         return Center(
//           child: CircularProgressIndicator(),
//         );
//
//
//       }
//
//
//       ,),
//     );
//   }
// }
//
//