import 'package:flutter/material.dart';

class baseline_widget extends StatelessWidget {
  const baseline_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text('baseline widget')),
        resizeToAvoidBottomInset: true,
      body: Center(
        child: Column(
          children: [
            Container(
              
            
              
              color: Colors.orangeAccent,
              height: 120.0,
              width: 120.0,
              child: Baseline(
                child: Container(
                  color: Colors.purple,
                  height: 60.0,
                  width: 60.0,
                ),
                baseline: 40.0,
                baselineType: TextBaseline.alphabetic,
              ),
            ),
           ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FlutterLogo(),)), child: Image(image: NetworkImage("data:image/png;base64,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")))
          ],
        ),
        
        

      ),
      // floatingActionButton: ElevatedButton(onPressed: Navigator.push(context, MaterialPageRoute(builder: (context) => FlutterLogo(),)), child: Icon(Icons.coffee)),

    );
  }
}
