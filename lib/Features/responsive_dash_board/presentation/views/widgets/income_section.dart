import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/income_details.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/income_header_widget.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
      log(MediaQuery.of(context).size.width.toString());
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeaderWidget(),
          SizedBox(height: 16,),
          IncomeSectionBody()
        ],
      ),
    );
  }
}


