import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/responsiveness.dart';
import 'package:flutterdaysindia/utils/app_info.dart';
import 'package:websafe_svg/websafe_svg.dart';

class LandingPage extends StatelessWidget {
  static String tag = "/landingPage";
  LandingCover({required BuildContext context, required String imgName}) {
    return WebsafeSvg.asset(
      imgName,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1.1,
      fit: BoxFit.fitWidth,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (Responsiveness.isLargeScreen(context)) {
      return LandingCover(context: context, imgName: AppInfo.imagecoversvg);
    } else if (Responsiveness.isMediumScreen(context)) {
      return LandingCover(context: context, imgName: AppInfo.imagecoversvgIPAD);
    } else {
      return LandingCover(
          context: context, imgName: AppInfo.imagecoversvgMobile);
    }
  }
}
