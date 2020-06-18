import 'package:flutter/material.dart';
import 'package:flutterdaysindia/utils/app_info.dart';

import 'package:websafe_svg/websafe_svg.dart';

class PoweredBy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Powered by',
            style: TextStyle(
              fontSize: 65.0,
              fontFamily: AppInfo.textFont,
              color: AppInfo.textColor,
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          WebsafeSvg.asset(
            AppInfo.gdgPower,
            fit: BoxFit.scaleDown,
          ),
        ],
      ),
    );
  }
}
