import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MypieChart extends StatelessWidget {
  const MypieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Text(
        "Revenue",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: PieChart(
              swapAnimationDuration: Duration(milliseconds: 780),
              swapAnimationCurve: Curves.easeInOut,
              PieChartData(sections: [
                PieChartSectionData(value: 100, color: Colors.green),
                PieChartSectionData(value: 50, color: Colors.blue),
                PieChartSectionData(value: 150, color: Colors.yellow),
                PieChartSectionData(value: 200, color: Colors.red)
              ])),
        ),
      )
    ]);
  }
}
