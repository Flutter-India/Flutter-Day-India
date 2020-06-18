import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/launchString.dart';

import 'package:websafe_svg/websafe_svg.dart';

import '../utils/app_info.dart';

class Streaming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 90.0),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Streaming on',
            style: TextStyle(
              fontSize: 45.0,
              color: Colors.white,
              fontFamily: 'Rocky Billy',
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          WebsafeSvg.asset(
            'assets/Images/svg/youtube.svg',
            height: 110.0,
          ),
          SizedBox(
            height: 70.0,
          ),
          ButtonTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13.0),
            ),
            height: 75.0,
            padding: EdgeInsets.all(16.0),
            child: RaisedButton(
              color: Color(0xffFF0000),
              onPressed: () => Launch.launchUrl(
                AppInfo.youtubeHandle,
              ),
              child: Text(
                "Subscribe",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 110.0,
          ),
        ],
      ),
    );
  }
}
