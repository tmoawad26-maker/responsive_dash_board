

class TransactionHistoryItemModel {
  final String title;
  final String subTitle;
  final String price;
  final bool isWithdrawal;
  const TransactionHistoryItemModel(
      {required this.isWithdrawal,
      required this.title,
      required this.subTitle,
      required this.price});
}
