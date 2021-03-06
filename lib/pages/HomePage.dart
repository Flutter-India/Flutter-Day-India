import 'package:flutter/material.dart';
import 'package:flutterdaysindia/pages/schedule.dart';
import 'package:flutterdaysindia/pages/speakerInfo.dart';

import 'aboutPage.dart';
import 'cfpPage.dart';
import 'contactUs.dart';
import 'footer.dart';
import 'landingPage.dart';
import 'organizerScreen.dart';
import 'poweredBy.dart';
import 'streaming.dart';
import 'updates.dart';

class HomePage extends StatelessWidget {
  List<Widget> buildList = [
    LandingPage(),
    AboutPage(),
    studyWidget(),
    Streaming(),
    SpeakerInfo(),
    ScheduleScreen(),
    OrganizerScreen(),
    PoweredBy(),
    ContactUs(),
    Footer(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green,
      backgroundColor: Color(0xff0B1C2C),
      body: ListView(
        padding: const EdgeInsets.all(0.0),
        shrinkWrap: true,
        children: buildList,
      ),
    );
  }
}
