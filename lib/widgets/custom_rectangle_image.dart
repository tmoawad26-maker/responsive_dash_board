import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/asset_data.dart';

class CustomRectangleImage extends StatelessWidget {
  const CustomRectangleImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AssetData.kRectangle,
          width: 193,
          height: 53,
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(AssetData.kGallery),
          ),
        )
      ],
    );
  }
}
