import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/active_and_in_active_item.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_header.dart';
import 'package:responsive_dash_board/widgets/list_drawer_items.dart';

import '../generated/l10n.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: CustomDrawerHeader()),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const ListDrawerItems(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: S.of(context).setting_system,
                      icon: Icons.settings),
                  iconColor: Colors.grey,
                ),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: S.of(context).layout_account,
                        icon: Icons.logout),
                    iconColor: const Color(0xffF3735E)),
                const SizedBox(
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
