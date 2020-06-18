import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/launchString.dart';
import 'package:flutterdaysindia/services/responsiveness.dart';
import 'package:flutterdaysindia/utils/app_info.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
        ),
        Container(
          width: double.infinity,
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 110.0,
                ),
                Text(
                  'Contact us',
                  style: TextStyle(
                    fontSize:
                        Responsiveness.isSmallScreen(context) ? 30.0 : 65.0,
                    fontFamily: AppInfo.textFont,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 55.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 20.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      socialIcon(
                        url: AppInfo.twitterHandle,
                        iconPath: AppInfo.twitterIcon,
                        context: context,
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      socialIcon(
                        url: AppInfo.facebookHandle,
                        iconPath: AppInfo.facebookIcon,
                        context: context,
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      socialIcon(
                        url: AppInfo.youtubeHandle,
                        iconPath: AppInfo.youtubeIcon,
                        context: context,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                GestureDetector(
                  onTap: () => Launch.launchUrl(AppInfo.slackHandle),
                  child: Container(
                    width:
                        Responsiveness.isSmallScreen(context) ? 150.0 : 235.0,
                    child: Image.asset(
                      AppInfo.slackIcon,
                    ),
//                    child: Image.network(
//                      "https://cdn.dribbble.com/users/989984/screenshots/5880822/comp_10.gif",
//                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  GestureDetector socialIcon(
      {String url, String iconPath, BuildContext context}) {
    return GestureDetector(
      onTap: () => Launch.launchUrl(url),
      child: CircleAvatar(
        radius: Responsiveness.isSmallScreen(context) ? 25.0 : 35.0,
        backgroundImage: AssetImage(iconPath),
      ),
    );
  }
}
