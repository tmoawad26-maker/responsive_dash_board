import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utilts/asset_data.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/custom_header_item.dart';
import 'package:responsive_dash_board/widgets/custom_rectangle_image.dart';
import 'package:responsive_dash_board/widgets/list_drawer_items.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });
    
  @override
  Widget build(BuildContext context) {
    return const   Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child:   Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                CustomRectangleImage(),
                 Expanded(
                 child: CustomHeaderItem(),
               )
              ],
          )
          ),
            Expanded(child: ListDrawerItems())
      ]
      )
    );
  }
}

