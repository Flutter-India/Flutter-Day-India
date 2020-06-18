import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/responsiveness.dart';
import 'package:flutterdaysindia/utils/app_info.dart';
import 'package:websafe_svg/websafe_svg.dart';

class PoweredBy extends StatelessWidget {
  gdgPowerRes(BuildContext context) {
    if (Responsiveness.isSmallScreen(context))
      return 12.0;
    else if (Responsiveness.isMediumScreen(context))
      return 40.0;
    else {
      return 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Powered by',
            style: TextStyle(
              fontSize: Responsiveness.isSmallScreen(context) ? 30.0 : 65.0,
              fontFamily: AppInfo.textFont,
              color: AppInfo.textColor,
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: gdgPowerRes(context)),
            child: WebsafeSvg.asset(
              AppInfo.gdgPower,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
    );
  }
}
