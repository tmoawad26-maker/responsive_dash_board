import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';


class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return   ListTile(
      leading: const  CustomDotIncomeDetails(),
      title: const  Expanded(child:   Text('data')),
      trailing: Text('40%',style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w500,
            color: const Color(0xff208CC8)
      ),),
    );
  }
}
class CustomDotIncomeDetails extends StatelessWidget {
  const CustomDotIncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}