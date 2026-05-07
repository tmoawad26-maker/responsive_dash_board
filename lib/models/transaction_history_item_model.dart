import 'package:flutter/material.dart';

class TransactionHistoryItemModel {
  final String title;
  final String subTitle;
  final String price;
  final Color priceColor;
  const TransactionHistoryItemModel(this.priceColor, 
      {required this.title, required this.subTitle, required this.price});
}
