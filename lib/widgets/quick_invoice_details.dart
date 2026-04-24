import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
class QuickInvoiceDetails extends StatelessWidget {
  const QuickInvoiceDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text('Customer name',style: Styles.textStyle16.copyWith(
                color: const  Color(0xff064061),
                fontWeight: FontWeight.w500
            ),
            ),
            // CustomBackgroundContainer(
            //   width: 270,
            //   height: 60,
            //   containerColor: const  Color(0xffFAFAFA),
            //     child: Text('Customer name',style: Styles.textStyle16.copyWith(
            //   fontWeight: FontWeight.w500,
            //   color: const  Color(0xffAAAAAA)
            // ),)),
          ],
        ),
        Column(
          children: [
            Text('Type Customer email',style: Styles.textStyle16.copyWith(
              color: const  Color(0xff064061),
              fontWeight: FontWeight.w500
            ),),
          ],
        ),

      ],
    );
  }
}
