import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/launchString.dart';
import 'package:flutterdaysindia/services/responsiveness.dart';
import 'package:flutterdaysindia/utils/app_info.dart';
import 'package:websafe_svg/websafe_svg.dart';

class AboutPage extends StatelessWidget {
  Widget gapbody = SizedBox(
    height: 30.0,
  );
  Widget gapHeader = SizedBox(
    height: 70.0,
  );

  double HeaderFont({BuildContext context}) {
    if (Responsiveness.isLargeScreen(context)) {
      return 90.0;
    } else if (Responsiveness.isMediumScreen(context)) {
      return 47.0;
    } else if (Responsiveness.isSmallScreen(context)) {
      return 40.0;
    }
  }

  containerHeight(BuildContext context) {
    if (Responsiveness.isSmallScreen(context))
      return MediaQuery.of(context).size.height / 1.7;
    else if (Responsiveness.isLargeScreen(context))
      return MediaQuery.of(context).size.height / 1.5;
    else if (Responsiveness.isMediumScreen(context))
      return MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight(context),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 35.0),
        child: aboutPageFormat(context: context),
      ),
    );
  }

  bodyFont({BuildContext context}) {
    return Responsiveness.isSmallScreen(context) ? 13.0 : 25.0;
  }

  aboutPageFormat({BuildContext context}) {
    double headerfont = Responsiveness.isSmallScreen(context) ? 25.0 : 55.0;
    return Responsiveness.isSmallScreen(context)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Flutter Day India is June 27, 2020!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: headerfont,
                ),
              ),
              gapbody,
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: RichText(
                  softWrap: true,
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text:
                        "Join us for a full 3-hours of sessions and Q&A hosted by the Flutter India Team. Leave your questions on Twitter with ",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: bodyFont(context: context),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "#AskFlutterIndia",
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Launch.launchUrl(
                                AppInfo.twitterHandle,
                              ),
                      ),
                      TextSpan(
                        text: " and we'll answer them during the show.",
                      ),
                    ],
                  ),
                ),
              ),
              gapHeader,
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: WebsafeSvg.asset(
                  "assets/images/svg/flutterdayIndia.svg",
                ),
              ),
              gapbody,
              Text(
                "When and Where",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Responsiveness.isSmallScreen(context) ? 25.0 : 55.0,
                ),
              ),
              gapbody,
              timeandloc(
                iconData: Icons.access_time,
                title: "3-hour starting from 10:30 am",
                iconsize: 25.0,
                textSize: 15.0,
                gap: 15.0,
              ),
              gapbody,
              timeandloc(
                  iconData: Icons.location_on,
                  title: "flutterindia.dev",
                  iconsize: 25.0,
                  textSize: 15.0,
                  gap: 15.0),
              gapbody,
              addToCalendar(
                context: context,
                fontsize: 13.0,
              ),
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Flutter Day India is June 27, 2020!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: headerfont,
                                ),
                              ),
                              gapbody,
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: RichText(
                                  softWrap: true,
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    text:
                                        "Join us for a full 3-hours of sessions and Q&A hosted by the Flutter India Team. Leave your questions on Twitter with ",
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: bodyFont(context: context),
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "#AskFlutterIndia",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () => Launch.launchUrl(
                                                AppInfo.twitterHandle,
                                              ),
                                      ),
                                      TextSpan(
                                        text:
                                            " and we'll answer them during the show.",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: WebsafeSvg.asset(
                              "assets/images/svg/flutterdayIndia.svg",
                            ),
                          ),
                        ),
                      ],
                    ),
                    gapHeader,
                    Text(
                      "When and Where",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:
                            Responsiveness.isSmallScreen(context) ? 25.0 : 55.0,
                      ),
                    ),
                    gapbody,
                    timeandloc(
                      iconData: Icons.access_time,
                      title: "3-hour starting from 10:30 am",
                    ),
                    gapbody,
                    timeandloc(
                      iconData: Icons.location_on,
                      title: "flutterindia.dev",
                    ),
//                    gapbody,
//                    addToCalendar(
//                      context: context,
//                      fontsize: 20.0,
//                    ),
                  ],
                ),
              ),
            ],
          );
  }

  RichText addToCalendar({BuildContext context, double fontsize = 20.0}) {
    return RichText(
      text: TextSpan(
          text: "Add to ",
          recognizer: TapGestureRecognizer()..onTap = () {},
          style: TextStyle(
            color: Colors.white54,
            fontSize: fontsize,
          ),
          children: <TextSpan>[
            TextSpan(
              text: " Google Calendar",
              style: TextStyle(color: Colors.white),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
            TextSpan(text: " | "),
            TextSpan(
              text: "iCalendar",
              style: TextStyle(color: Colors.white),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ]),
    );
  }

  Row timeandloc(
      {IconData iconData,
      String title,
      double iconsize = 30.0,
      double textSize = 25.0,
      gap = 25.0}) {
    return Row(
      children: [
        Icon(
          iconData,
          size: iconsize,
        ),
        SizedBox(
          width: gap,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: textSize,
          ),
        ),
      ],
    );
  }
}

class studyWidget extends StatelessWidget {
  const studyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Responsiveness.isSmallScreen(context)) {
      return Container(
        child: Column(
          children: [
            Image.asset(
              "assets/animations/study.gif",
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Join us from anywhere around the world. This is a 100% virtual and free conference.\nWe are excited to see you!",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        height: MediaQuery.of(context).size.height / 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              "assets/animations/study.gif",
              scale: 1.5,
            ),
            Flexible(
              child: Text(
                "Join us from anywhere around the world. This is a 100% virtual and free conference.\nWe are excited to see you!",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
