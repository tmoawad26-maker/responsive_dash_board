import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

import '../core/utilts/constants.dart';
import '../core/utilts/styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
     this.onTap,
    required this.drawerItemModel,
     this.iconColor,
     this.textColor,
  });

  final VoidCallback? onTap;
  final DrawerItemModel drawerItemModel;
  final Color? iconColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: Colors.white,
      leading: Icon(
        drawerItemModel.icon,
        color: iconColor ?? kPrimaryColor,
      ),
      title: Text(
        drawerItemModel.title,
        style: Styles.textStyle16.copyWith(
            color: textColor ?? kTextColor, fontWeight: FontWeight.w500),
      ),
    );
  }
}

// create active item
class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.onTap,
    required this.drawerItemModel,
    required this.iconColor,
    required this.textColor,
  });

  final VoidCallback? onTap;
  final DrawerItemModel drawerItemModel;
  final Color? iconColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: Colors.white,
      leading: Icon(
        drawerItemModel.icon,
        color: iconColor ?? kPrimaryColor,
      ),
      title: Text(
        drawerItemModel.title,
        style: Styles.textStyle16.copyWith(
          color: textColor ?? kTextColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Container(
        width: 3.27,
        color: kPrimaryColor,
      ),
    );
  }
}
