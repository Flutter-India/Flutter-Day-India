import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/launchString.dart';
import 'package:flutterdaysindia/services/responsiveness.dart';

class sessionCard extends StatelessWidget {
  final String time;
  final String sessionTitle;
  final String speakerName;
  final String sessionDescription;
  final String speakerUrl;

  sessionCard({
    this.time,
    this.sessionTitle,
    this.speakerName,
    this.sessionDescription,
    this.speakerUrl,
  })  : assert(time != null),
        assert(sessionTitle != null),
        assert(speakerName != null),
        assert(sessionDescription != null),
        assert(speakerUrl != null);

  Widget gap = SizedBox(
    height: 15.0,
  );

  Widget cardSize({BuildContext context}) {
    if (Responsiveness.isSmallScreen(context)) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            time,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          gap,
          SizedBox(
            width: 70.0,
            child: Divider(
              thickness: 2.0,
              color: Color(0xff2DB7F6),
            ),
          ),
          gap,
          Text(
            sessionTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          gap,
          RichText(
            text: TextSpan(
              text: speakerName,
              style: TextStyle(
                color: Color(0xff008DFF),
                fontSize: 15.0,
                fontWeight: FontWeight.w100,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => Launch.launchUrl(
                      speakerUrl,
                    ),
            ),
          ),
          gap,
          Text(
            sessionDescription,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 13.0,
            ),
          ),
        ],
      );
    } else if (Responsiveness.isMediumScreen(context)) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  gap,
                  Text(
                    time,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                  gap,
                  SizedBox(
                    width: 100.0,
                    child: Divider(
                      thickness: 5.0,
                      color: Color(0xff2DB7F6),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sessionTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
                gap,
                Text(
                  speakerName,
                  style: TextStyle(
                    color: Color(0xff2DB7F6),
                    fontSize: 23.0,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                gap,
                Text(
                  sessionDescription,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    } else if (Responsiveness.isLargeScreen(context)) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  gap,
                  SizedBox(
                    width: 115.0,
                    child: Divider(
                      thickness: 5.0,
                      color: Color(0xff2DB7F6),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sessionTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                  ),
                ),
                gap,
                Text(
                  speakerName,
                  style: TextStyle(
                    color: Color(0xff2DB7F6),
                    fontSize: 30.0,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                gap,
                Text(
                  sessionDescription,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return cardSize(context: context);
  }
}
