import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/active_and_in_active_item.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.drawerItemModel,
      this.textColor,
      this.iconColor,
      required this.isActive,
      this.onTap});
  final DrawerItemModel drawerItemModel;
  final Color? textColor, iconColor;
  final VoidCallback? onTap;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveDrawerItem(
        onTap: onTap,
        drawerItemModel: drawerItemModel,
        iconColor: iconColor,
        textColor: textColor) : InActiveDrawerItem(
          onTap: onTap, 
        drawerItemModel: drawerItemModel, 
        iconColor: iconColor, 
        
        textColor: textColor);
  }
}

