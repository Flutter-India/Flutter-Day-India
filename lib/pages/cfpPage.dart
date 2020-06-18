import 'package:flutter/material.dart';

import 'package:flutterdaysindia/services/launchString.dart';
import 'package:flutterdaysindia/utils/app_info.dart';

class CFPPage extends StatelessWidget {
  static String tag = "/CFPPage";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/animations/mypersonalLogo.gif"),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Call for Speaker",
                  style: TextStyle(
                    fontFamily: AppInfo.textFont,
                    color: Colors.white,
                    fontSize: 90.0,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                OutlineButton(
                  onPressed: () => Launch.launchUrl(
                    "https://sessionize.com/flutter-day-india",
                  ),
                  child: Text(
                    "Call for Proposal",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  padding: EdgeInsets.all(16.0),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 4.0,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
