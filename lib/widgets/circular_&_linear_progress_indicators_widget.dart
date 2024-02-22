import 'package:flutter/material.dart';

class circular_linear_progress_indicators_widget extends StatefulWidget {
  const circular_linear_progress_indicators_widget({super.key});

  @override
  State<circular_linear_progress_indicators_widget> createState() => _circular_linear_progress_indicators_widgetState();
}

class _circular_linear_progress_indicators_widgetState extends State<circular_linear_progress_indicators_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('circular_linear_progress_indicators_widget example'),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(50),
        child: Center(

          child: Column(
            mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
            children: [
              CircularProgressIndicator(
              ),
              LinearProgressIndicator(
                borderRadius: BorderRadius.circular(100),

              )
            ],
          ),
        ),
      ),
    );
  }
}
