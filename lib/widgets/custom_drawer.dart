import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utilts/asset_data.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/custom_rectangle_image.dart';
import 'package:responsive_dash_board/widgets/list_drawer_items.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });
    
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
              const  CustomRectangleImage(),
                Expanded(
                 child: Row(
                  children: [
                     SvgPicture.asset(AssetData.kFrame , width: 32, height: 32,),
                    const  SizedBox(width: 3.5,),
                     Column(
                      mainAxisAlignment: MainAxisAlignment.center,                      
                      children: [
                        Text('Lekan Okeowo', style: Styles.textStyle16.copyWith(color: kTextColor),),
                       const  SizedBox(height: 4),
                    const Text(
                      'Madraniadi20@gmail',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffAAAAAA),
                      ),
                    )
                      ],
                    )
                  ],
                  ),
               )
              ],
          )
          ),
          const  Expanded(child: ListDrawerItems())
      ]
      )
    );
  }
}

