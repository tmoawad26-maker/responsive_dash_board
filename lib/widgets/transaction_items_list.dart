import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_item_model.dart';
import 'package:responsive_dash_board/widgets/transacton_items.dart';

class TransactionItemsList extends StatelessWidget {
  const TransactionItemsList({super.key});
  static const List<TransactionItemModel> listTransaction = [
    TransactionItemModel(
        image: 'assets/images/Frame.svg',
        userName: 'Madrani Andi',
        email: 'Madraniadi20@gmail'),
    TransactionItemModel(
        image: 'assets/images/Frame (1).svg',
        userName: 'Madrani Andi',
        email: 'Madraniadi20@gmail'),
    TransactionItemModel(
        image: 'assets/images/Frame.svg',
        userName: 'Madrani Andi',
        email: 'Madraniadi20@gmail'),
    TransactionItemModel(
        image: 'assets/images/Frame (1).svg',
        userName: 'Madrani Andi',
        email: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 0) {
            return TransactionItems(
                transactionItemModel: listTransaction[index]);
          } else {
            return Padding(
              padding: const EdgeInsets.only(left: 12),
              child: TransactionItems(
                  transactionItemModel: listTransaction[index]),
            );
          }
        },
        itemCount: listTransaction.length,
      ),
    );
  }
}
