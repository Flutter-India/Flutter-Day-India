import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/launchString.dart';
import 'package:flutterdaysindia/utils/app_info.dart';
import 'package:flutterdaysindia/widgets/dominic_logo_animation.dart';


class AboutPage extends StatelessWidget {
  Widget gapbody = SizedBox(
    height: 30.0,
  );
  Widget gapHeader = SizedBox(
    height: 70.0,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 35.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Flutter Day India is June 27, 2020!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 55.0,
                    ),
                  ),
                  gapbody,
                  RichText(
                    softWrap: true,
                    text: TextSpan(
                      text:
                          "Join us for a full 3-hours of sessions and Q&A hosted by the Flutter India Team. Leave your questions on Twitter with ",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 35.0,
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
                  gapHeader,
                  Text(
                    "When and Where",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 55.0,
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
                  gapbody,
                  RichText(
                    text: TextSpan(
                        text: "Add to ",
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 20.0,
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
                  ),
                ],
              ),
            ),
            // Flexible(
            //   child: FlutterLogoAnimation(),
            // ),
          ],
        ),
      ),
    );
  }

  Row timeandloc({
    IconData iconData,
    String title,
  }) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 30.0,
        ),
        SizedBox(
          width: 25.0,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 25.0,
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
