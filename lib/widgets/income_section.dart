import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';
import 'package:responsive_dash_board/widgets/income_header_widget.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        IncomeHeaderWidget(),
        SizedBox(
          height: 18,
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IncomeDetails(
                    title: 'Design service',
                    trailing: '40%',
                    dotColor: Color(0xff208CC8),
                  ),
                  IncomeDetails(
                    title: 'Design product',
                    trailing: '25%',
                  ),
                  IncomeDetails(
                    title: 'Product royalti',
                    trailing: '20%',
                    dotColor: Color(0xff064061),
                  ),
                  IncomeDetails(
                    title: 'Other',
                    trailing: '22%',
                    dotColor: Color(0xffE2DECD),
                  ),
                ],
              ))
            ],
          ),
        )
      ],
    ));
  }
}
