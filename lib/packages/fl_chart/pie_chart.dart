import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartExample extends StatelessWidget {
  PieChartExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Piechart'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(30),
          child: PieChart(PieChartData(
              centerSpaceRadius: 5,
              borderData: FlBorderData(show: false),
              sectionsSpace: 2,
              sections: [
                PieChartSectionData(value: 35, color: Colors.purple, radius: 100),
                PieChartSectionData(value: 40, color: Colors.amber, radius: 100),
                PieChartSectionData(value: 55, color: Colors.green, radius: 100),
                PieChartSectionData(value: 70, color: Colors.orange, radius: 100),
              ])
          )
      ),
    );
  }
}