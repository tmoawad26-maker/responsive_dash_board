import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int touchSectionIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
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
              title: touchSectionIndex == 0 ? 'Design service' : '40%',
              titlePositionPercentageOffset:
                  touchSectionIndex == 0 ? 1.5 : null,
              titleStyle: Styles.textStyle16(context).copyWith(
                  color: touchSectionIndex == 0 ? kPrimaryColor : Colors.white),
              value: 40,
              radius: touchSectionIndex == 0 ? 30 : 40,
              color: const Color(0xff208CC8)),
          PieChartSectionData(
            titleStyle: Styles.textStyle16(context).copyWith(
                color: touchSectionIndex == 1 ? kTextColor : Colors.white),
            title: touchSectionIndex == 1 ? 'Design product' : '25%',
            titlePositionPercentageOffset: touchSectionIndex == 1 ? 2.2 : null,
            value: 25,
            radius: touchSectionIndex == 1 ? 30 : 40,
            color: kPrimaryColor,
          ),
          PieChartSectionData(
            titleStyle: Styles.textStyle16(context).copyWith(
                color: touchSectionIndex == 2 ? kPrimaryColor : Colors.white),
            title: touchSectionIndex == 2 ? 'Product royalti' : '20%',
            titlePositionPercentageOffset: touchSectionIndex == 2 ? 1.6 : null,
            value: 20,
            radius: touchSectionIndex == 2 ? 30 : 40,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            titleStyle: Styles.textStyle16(context).copyWith(
                color: touchSectionIndex == 3 ? kPrimaryColor : Colors.white),
            title: touchSectionIndex == 3 ? 'Other' : '22%',
            titlePositionPercentageOffset: touchSectionIndex == 3 ? 2 : null,
            value: 22,
            radius: touchSectionIndex == 3 ? 30 : 40,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
