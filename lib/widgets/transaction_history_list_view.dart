import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_item_model.dart';
import 'package:responsive_dash_board/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const listTransactionHistory = [
    TransactionHistoryItemModel(
      isWithdrawal: true,
      title: 'Cash Withdrawal', subTitle: '13 April 2022', price: '20,129'),
    TransactionHistoryItemModel(
        title: 'Landing Page project',
        subTitle: '13 Apr, 2022 at 3:30 PM',
        isWithdrawal: false,
        price: '2,000'),
    
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionHistoryItem(
            transactionHistoryItem: listTransactionHistory[index]);
      },
      itemCount: listTransactionHistory.length,
    );
  }
}
