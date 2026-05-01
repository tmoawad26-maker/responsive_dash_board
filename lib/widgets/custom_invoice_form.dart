import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/customer_data_widget.dart';

class CustomInvoiceForm extends StatelessWidget {
  const CustomInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomerDataWidget(
                title: 'Type Customer name',
                hintText: 'Enter Customer name',
              ),
            ),
            SizedBox(
             width: 16,
            ),
            Expanded(
              child: CustomerDataWidget(
                title: 'Type Customer Email',
                hintText: 'Enter Customer Email',
              ),
            ),
          ],
         ),
         
        Row(
          children: [
            Expanded(
              child: CustomerDataWidget(
                title: 'Item name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomerDataWidget(
                title: 'Item mount',
                hintText: 'USD',
                suffixIcon: Icon(Icons.arrow_downward,
                  size: 20,
                  color: Color(0xff064061),),
              ),
            ),
          ],
        ),
          Text('Add more details',) 
           
           ],
           

        );
  }
}
