import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_header_item.dart';
import 'package:responsive_dash_board/widgets/custom_rectangle_image.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomRectangleImage(),
        Expanded(
          child: CustomHeaderItem(),
        )
      ],
    ));
  }
}
