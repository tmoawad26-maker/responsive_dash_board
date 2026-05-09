

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int touchSectionIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, piTouchResponse) {
            touchSectionIndex =
                piTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              value: 40,
              radius: touchSectionIndex == 0 ? 30 : 40,
              showTitle: false,
              color: const Color(0xff208CC8)),
          PieChartSectionData(
            value: 25,
            radius: touchSectionIndex == 1 ? 30 : 40,
            showTitle: false,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
              value: 20,
              radius: touchSectionIndex == 2 ? 30 : 40,
              color: const Color(0xff064061),
              showTitle: false),
          PieChartSectionData(
              value: 22,
              radius: touchSectionIndex == 3 ? 30 : 40,
              color: const Color(0xffE2DECD),
              showTitle: false),
        ]);
  }
}
