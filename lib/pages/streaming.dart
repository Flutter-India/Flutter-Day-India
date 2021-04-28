import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/launchString.dart';
import 'package:flutterdaysindia/services/responsiveness.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_info.dart';

class Streaming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double headerSize = Responsiveness.isSmallScreen(context) ? 25.0 : 45.0;
    return Container(
      margin: EdgeInsets.only(
          top: Responsiveness.isSmallScreen(context) ? 45 : 90.0),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Streaming on',
            style: GoogleFonts.leckerliOne(
              fontSize: headerSize,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
//            child: WebsafeSvg.network(
//              "https://cdn.worldvectorlogo.com/logos/new-youtube-logo.svg",
//              height: Responsiveness.isSmallScreen(context) ? 50.0 : 110.0,
//            ),
            child: Image.asset(
              "assets/images/socialIcons/Youtube_Icon.png",
            ),
          ),
          SizedBox(
            height: 70.0,
          ),
          ButtonTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  Responsiveness.isSmallScreen(context) ? 7.0 : 13.0),
            ),
            height: Responsiveness.isSmallScreen(context) ? 27.0 : 75.0,
            padding: EdgeInsets.all(
              Responsiveness.isSmallScreen(context) ? 8.0 : 16.0,
            ),
            child: RaisedButton(
              color: Color(0xffFF0000),
              onPressed: () => Launch.launchUrl(
                AppInfo.youtubeVideoLink,
              ),
              child: Text(
                "Watch Live",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Responsiveness.isSmallScreen(context) ? 20.0 : 45.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Responsiveness.isSmallScreen(context) ? 50.0 : 110.0,
          ),
        ],
      ),
    );
  }
}
