import 'package:flutter/material.dart';
import 'package:flutter_training/widgets/slider.dart';

class RangeSliderExample extends StatefulWidget {
  const RangeSliderExample({super.key});

  @override
  State<RangeSliderExample> createState() => _RangeSliderExampleState();
}

class _RangeSliderExampleState extends State<RangeSliderExample> {
  // RangeValues _currentRangeValues = const RangeValues(40, 80);
  double startValue = 30;
  double endValue = 100;
  String text = 'inicial';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Range Slider"),
        ),
        body: RangeSlider(
          onChanged: (value) {
            setState(() {
              startValue = value.start;
              endValue = value.end;
            });
          },
          values: RangeValues(startValue, endValue),
          max: 100,
        ));
  }
}
