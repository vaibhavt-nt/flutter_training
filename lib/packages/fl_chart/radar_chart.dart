import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class RadarChartExample extends StatelessWidget {
  const RadarChartExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radar chart Example'),),
      body: RadarChart(
        swapAnimationCurve: Curves.bounceIn,
          swapAnimationDuration: Duration(milliseconds: 150),
          RadarChartData(
              getTitle: (index, angle) {
                switch (index) {
                  case 0:
                    return RadarChartTitle(text: 'Mobile or Tablet', angle: angle);
                  case 2:
                    return RadarChartTitle(text: 'Desktop', angle: angle);
                  case 1:
                    return RadarChartTitle(text: 'TV', angle: angle);
                  default:
                    return const RadarChartTitle(text: '');
                }
              },
              gridBorderData: BorderSide(),
              radarBackgroundColor: Colors.lightBlueAccent,
              radarShape: RadarShape.circle,
              tickCount: 1,
              borderData: FlBorderData(
                border: Border(
                  right: BorderSide(color: Colors.white)
                ),
                show: true
              ),

              dataSets: [

        RadarDataSet(borderColor: Colors.deepPurple,borderWidth: 1,entryRadius: 1,
            dataEntries: [
              RadarEntry(value: 10,),
              RadarEntry(value: 20222222),
              RadarEntry(value: 301),
              RadarEntry(value: 4034),
        ]),
        RadarDataSet(borderColor: Colors.red,borderWidth: 10,entryRadius: 10,
            dataEntries: [
              RadarEntry(value: 50),
              RadarEntry(value: 60),
              RadarEntry(value: 70),
              RadarEntry(value: 80),
        ]),
        RadarDataSet(borderColor: Colors.black,borderWidth: 10,entryRadius: 10,
            dataEntries: [
              RadarEntry(value: 90644),
              RadarEntry(value: 100322),
              RadarEntry(value: 1103333),
              RadarEntry(value: 1204444),
        ]),
        RadarDataSet(borderColor: Colors.teal,borderWidth: 10,entryRadius: 10,
            dataEntries: [
              RadarEntry(value: 1308),
              RadarEntry(value: 1450),
              RadarEntry(value: 15053),
              RadarEntry(value: 162220),
              // RadarEntry(value: 11033333),
              // RadarEntry(value: 18450),
        ]),
        RadarDataSet(borderColor: Colors.lightGreenAccent,borderWidth: 10,entryRadius: 10,
            dataEntries: [
          RadarEntry(value: 1707),
              RadarEntry(value: 1840),
              RadarEntry(value: 19660),
              RadarEntry(value: 2003),

        ]),
      ])),
    );
  }
}
