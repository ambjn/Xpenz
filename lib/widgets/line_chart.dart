import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLineChart extends StatelessWidget {
  CustomLineChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: false,
          ),
          lineBarsData: [
            LineChartBarData(
              // spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
              spots: [
                const FlSpot(0, 3),
                const FlSpot(2.6, 2),
                const FlSpot(4.9, 5),
                const FlSpot(6.8, 2.5),
                const FlSpot(8, 4),
                const FlSpot(9.5, 3),
                const FlSpot(11, 4),
              ],
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
            bottomTitles: AxisTitles(sideTitles: _bottomTitles),
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
        reservedSize: 100,
        getTitlesWidget: (value, meta) {
          String text = '';
          switch (value.toInt()) {
            case 2:
              text = 'Feb';
              break;
            case 4:
              text = 'Apr';
              break;
            case 6:
              text = 'Jun';
              break;
            case 8:
              text = 'Aug';
              break;
            case 10:
              text = 'Oct';
              break;
            case 12:
              text = 'Dec';
              break;
          }

          return Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          );
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
            case 5:
              text = "50K";
              break;
          }
          return Text(text);
        },
      );
}
