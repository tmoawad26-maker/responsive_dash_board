import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/utilts/styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key, required this.drawerItemModel, this.textColor, this.iconColor});
  final DrawerItemModel drawerItemModel;
  final Color? textColor , iconColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 134,
      height: 48,
      child: ListTile(
        tileColor: Colors.white,
        leading: Icon(
          drawerItemModel.icon,
          color: iconColor ?? kCardColor,
        ),
        title: Text(
          drawerItemModel.title,
          style: Styles.textStyle16.copyWith(
              color: textColor ?? kTextColor, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
