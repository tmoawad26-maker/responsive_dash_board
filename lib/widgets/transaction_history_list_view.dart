import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_item_model.dart';
import 'package:responsive_dash_board/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const listTransactionHistory = [
    TransactionHistoryItemModel(Color(0xffF3735E),
        title: 'Cash Withdrawal', subTitle: '13 April 2022', price: '20,129'),
    TransactionHistoryItemModel(Color(0xff7DD97B),
        title: 'Landing Page project',
        subTitle: '13 Apr, 2022 at 3:30 PM',
        price: '2,000'),
    TransactionHistoryItemModel(Color(0xff7DD97B),
        title: 'Juni Mobile App project',
        subTitle: '13 Apr, 2022 at 3:30 PM',
        price: '3,0000'),
    TransactionHistoryItemModel(Color(0xff7DD97B),
        title: 'Cash Withdrawal', subTitle: '13 April 2022', price: '20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 78,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: IntrinsicWidth(
              child: TransactionHistoryItem(
                  transactionHistoryItem: listTransactionHistory[index]),
            ),
          );
        },
        itemCount: listTransactionHistory.length,
      ),
    );
  }
}
