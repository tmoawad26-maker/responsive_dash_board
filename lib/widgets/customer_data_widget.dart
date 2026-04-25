import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';

class CustomerDataWidget extends StatelessWidget {
  const CustomerDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Cusomer name', style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w500, color: kTextColor
          ),),
    const  Expanded(
       child:   TextField(
          decoration: InputDecoration(
            hintText: 'Type customer name',
            border: OutlineInputBorder(),
            filled: true,
            fillColor: Color(0xffFAFAFA),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none
            )
          ),
        ),
     )
        ],
      ),
    );
  }
}
