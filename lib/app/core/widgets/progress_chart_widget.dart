import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ProgressChartWidget extends StatelessWidget {
  final double progressPercentage;
  final List<PieChartSectionData> sections;

  const ProgressChartWidget({
    Key? key,
    required this.progressPercentage,
    required this.sections,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Learning Progress",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 200,
          child: PieChart(
            PieChartData(
              sections: sections,
              centerSpaceRadius: 50,
              sectionsSpace: 2,
              borderData: FlBorderData(show: false),
              pieTouchData: PieTouchData(),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "Progress: ${progressPercentage.toStringAsFixed(1)}%",
          style: const TextStyle(fontSize: 16, color: Colors.black54),
        ),
      ],
    );
  }
}

List<PieChartSectionData> generateSections(double progress) {
  return [
    PieChartSectionData(
      color: Colors.blue,
      value: progress,
      title: '${progress.toStringAsFixed(1)}%',
      radius: 60,
      titleStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    PieChartSectionData(
      color: Colors.grey[300],
      value: 100 - progress,
      title: '',
      radius: 50,
    ),
  ];
}
