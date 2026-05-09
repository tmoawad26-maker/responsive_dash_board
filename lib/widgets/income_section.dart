import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';
import 'package:responsive_dash_board/widgets/income_header_widget.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const  CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeaderWidget(),
          SizedBox(height: 18,),
          Expanded(
            child: Row(
              children: [
                Expanded(child: IncomeChart()),
                SizedBox(width: 12,),
                Expanded(child: IncomeDetails())
              ],
            ),
          )
        ],
      )
    );
  }
}

  

