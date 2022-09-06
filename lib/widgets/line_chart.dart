import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLineChart extends StatelessWidget {
  CustomLineChart({Key? key}) : super(key: key);

  List points = [
    FlSpot(0, 3),
    FlSpot(2.6, 2),
    FlSpot(4.9, 5),
    FlSpot(6.8, 2.5),
    FlSpot(8, 4),
    FlSpot(9.5, 3),
    FlSpot(11, 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: LineChart(
        swapAnimationDuration: Duration(milliseconds: 10),
        swapAnimationCurve: Curves.elasticIn,
        LineChartData(
          gridData: FlGridData(
            show: false,
          ),
          lineBarsData: [
            LineChartBarData(
              spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
              isCurved: true,
              color: Colors.white,
              barWidth: 3.5,
              dotData: FlDotData(
                show: false,
              ),
            ),
          ],
          borderData: FlBorderData(
            show: false,
          ),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
        ),
      ),
    );
  }

  SideTitles get _bottomTitles => SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          String text = '';
          switch (value.toInt()) {
            case 1:
              text = 'Feb';
              break;
            case 3:
              text = 'Apr';
              break;
            case 5:
              text = 'Jun';
              break;
            case 7:
              text = 'Aug';
              break;
            case 9:
              text = 'Oct';
              break;
            case 11:
              text = 'Dec';
              break;
          }

          return Text(text);
        },
      );
  SideTitles get _leftTitles => SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          String text = '';
          switch (value.toInt()) {
            case 1:
              text = "10K";
              break;
            case 3:
              text = "30K";
              break;
          }
          return Text(text);
        },
      );
}
