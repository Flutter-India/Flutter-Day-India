import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/responsiveness.dart';
import 'package:flutterdaysindia/utils/app_info.dart';
import 'package:websafe_svg/websafe_svg.dart';

class LandingPage extends StatelessWidget {
  static String tag = "/landingPage";
  LandingCover({BuildContext context, String imgName}) {
    return WebsafeSvg.asset(
      imgName,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (Responsiveness.isLargeScreen(context)) {
      return LandingCover(context: context, imgName: AppInfo.imagecoversvg);
    } else if (Responsiveness.isMediumScreen(context)) {
      return LandingCover(context: context, imgName: AppInfo.imagecoversvgIPAD);
    } else if (Responsiveness.isSmallScreen(context)) {
      return LandingCover(
          context: context, imgName: AppInfo.imagecoversvgMobile);
    }
  }
}
