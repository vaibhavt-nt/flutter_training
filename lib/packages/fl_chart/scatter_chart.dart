import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ScatterChartExample extends StatelessWidget {
  const ScatterChartExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scatterchart Example'),),
      body: ScatterChart(ScatterChartData(
        scatterSpots: [
          ScatterSpot(1, 10,show: true),
          ScatterSpot(8, 20,show: true),
          ScatterSpot(2, 60,show: true),
          ScatterSpot(3, 80,show: true),
          ScatterSpot(9, 20,show: true),
          ScatterSpot(5, 60,show: true),
        ],

      )),
    );
  }
}
