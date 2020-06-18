import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class LandingPage extends StatelessWidget {
  static String tag = "/landingPage";

  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/images/svg/FlutterDayIndiaPoster.svg",
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.cover,
    );
  }
}

//child: Column(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: [

////          iconTopRow(),
////          Column(
////            crossAxisAlignment: CrossAxisAlignment.center,
////            children: [
////              WebsafeSvg.asset(
////                AppInfo.imagecoversvg,
////                fit: BoxFit.scaleDown,
////                //  height: 700.0,
////                width: 1300.0,
////              ),
////              WebsafeSvg.asset(
////                "assets/images/svg/date.svg",
////                fit: BoxFit.scaleDown,
////                width: 500.0,
////              ),
////            ],
////          ),
////          iconBottomRow(),
//        ],
//      ),
