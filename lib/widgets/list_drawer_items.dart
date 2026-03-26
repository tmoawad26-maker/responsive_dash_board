import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/custom_list_tile.dart';

class ListDrawerItems extends StatelessWidget {
  const ListDrawerItems({super.key});
    static const List<DrawerItemModel> drawerItemModel = [
    DrawerItemModel(title: 'Dashboard', icon: Icons.dashboard),     
    DrawerItemModel(title: ' My Transactions', icon: Icons.description),
    DrawerItemModel(title: 'Wallet Account', icon: Icons.wallet),
    DrawerItemModel(title: 'My Investments', icon: Icons.account_balance),
    DrawerItemModel(title: 'Setting system', icon: Icons.settings),
    DrawerItemModel(title: 'Logout account', icon: Icons.logout),
    ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      if(index == drawerItemModel.length - 1 ) {
        return Padding(
          padding: const EdgeInsets.only(top: 267),
          child: CustomListTile(
            drawerItemModel:  drawerItemModel[index], 
          textColor: const  Color(0xff064061),
          iconColor: const  Color(0xffF3735E),
          ),
        );
      } 
      else {
        return CustomListTile(
          drawerItemModel:  drawerItemModel[index], 
        );
      }
    },
    itemCount: drawerItemModel.length,
    );
  }
}