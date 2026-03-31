import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/active_and_in_active_item.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_header.dart';
import 'package:responsive_dash_board/widgets/list_drawer_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
        child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomDrawerHeader()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          ListDrawerItems(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Setting system', icon: Icons.settings),
                  iconColor: Colors.grey,
                ),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout account', icon: Icons.logout),
                    iconColor: Color(0xffF3735E)),
                    SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
