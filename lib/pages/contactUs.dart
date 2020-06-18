import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/launchString.dart';
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
                    fontSize: 55.0,
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
                      GestureDetector(
                        onTap: () => Launch.launchUrl(AppInfo.twitterHandle),
                        child: CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage(AppInfo.twitterIcon),
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      GestureDetector(
                        onTap: () => Launch.launchUrl(AppInfo.facebookHandle),
                        child: CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage(AppInfo.facebookIcon),
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      GestureDetector(
                        onTap: () => Launch.launchUrl(AppInfo.youtubeHandle),
                        child: CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage(AppInfo.youtubeIcon),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                GestureDetector(
                  onTap: () => Launch.launchUrl(AppInfo.slackHandle),
                  child: Container(
                    width: 235.0,
                    child: Image.asset(
                      AppInfo.slackIcon,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
