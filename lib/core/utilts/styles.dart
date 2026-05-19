
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/size_config.dart';

class Styles {
  static TextStyle textStyle20(context) {
      return TextStyle(
      fontSize: getResponsiveFontSize(context,fontSize: 20),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat');
  }
  
  static TextStyle textStyle16(context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
}

static TextStyle textStyle14(context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
}

static TextStyle textStyle24(context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
}

static TextStyle textStyle12(context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
}

static TextStyle textStyle18(context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
}
}

/// scaleFactor
/// responsive font size
/// (min , max) font size
double getResponsiveFontSize(context,{required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * fontSize;
  double lowerLimit = .8 * fontSize;
  double upperLimit = 1.2 * fontSize;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalDispather = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalDispather / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1280;
  }
}
