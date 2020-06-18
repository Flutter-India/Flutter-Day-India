import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/launchString.dart';
import 'package:flutterdaysindia/utils/app_info.dart';

class OrganizerMeetup extends StatelessWidget {
  OrganizerMeetup({
    Key key,
    @required this.string,
  }) : super(key: key);

  final String string;

  @override
  Widget build(BuildContext context) {
    if (string.isEmpty) {
      return Container(
        width: 0.0,
        height: 0.0,
      );
    }
    return GestureDetector(
      onTap: () => Launch.launchUrl(string),
      child: CircleAvatar(
        radius: 30.0,
        backgroundImage: AssetImage(
          AppInfo.meetupIcon,
        ),
        backgroundColor: AppInfo.backgroundColor,
      ),
    );
  }
}

class OrganizerTwitter extends StatelessWidget {
  final String string;

  const OrganizerTwitter({
    Key key,
    @required this.string,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (string.isEmpty) {
      return Container(
        width: 0.0,
        height: 0.0,
      );
    }
    return GestureDetector(
      onTap: () => Launch.launchUrl(string),
      child: CircleAvatar(
        radius: 30.0,
        backgroundImage: AssetImage(
          AppInfo.twitterIcon,
        ),
        backgroundColor: AppInfo.backgroundColor,
      ),
    );
  }
}
