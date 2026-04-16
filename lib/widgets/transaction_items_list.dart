import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/asset_data.dart';
import 'package:responsive_dash_board/models/transaction_item_model.dart';
import 'package:responsive_dash_board/widgets/transacton_items.dart';

import '../generated/l10n.dart';

class TransactionItemsList extends StatelessWidget {
  const TransactionItemsList({super.key});
  static List<TransactionItemModel> listTransaction = [
    TransactionItemModel(
        image: AssetData.kFrame,
        userName: S.current.name,
        email: S.current.email),
    TransactionItemModel(
        image: AssetData.kFrame1,
        userName: S.current.name,
        email: S.current.email),
    TransactionItemModel(
        image: AssetData.kFrame,
        userName: S.current.name,
        email: S.current.email),
    TransactionItemModel(
        image: AssetData.kFrame1,
        userName: S.current.name,
        email: S.current.email),
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
