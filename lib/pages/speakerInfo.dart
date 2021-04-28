import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/responsiveness.dart';
import 'package:flutterdaysindia/widgets/speakerInfoCard.dart';

class SpeakerInfo extends StatelessWidget {
  Widget gap = SizedBox(
    height: 50.0,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: speakerList(context),
    );
  }

  Widget speakerList(BuildContext context) {
    if (Responsiveness.isLargeScreen(context)) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Speakers",
            style: TextStyle(
              fontSize: Responsiveness.isSmallScreen(context) ? 35.0 : 65.0,
              color: Colors.white,
            ),
          ),
          gap,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpeakerInfoCard(
                speakerImg: "https://i.ibb.co/Lt0GBv9/1516326511397.jpg",
                speakerName: "Andrew Brogdon",
                speakerPos: "Engineer at Flutter DevRel",
                speakerTwitterHandle: "https://twitter.com/redbrogdon",
                speakerLinkdinHandle:
                    "https://www.linkedin.com/in/andrewbrogdon/",
              ),
              SpeakerInfoCard(
                speakerImg: "https://i.ibb.co/Ms6j2QR/1516947049112.jpg",
                speakerName: "Max Weber",
                speakerPos: "Founder and YouTuber of FlutterExplained",
                speakerTwitterHandle: "https://twitter.com/flutter_exp",
                speakerLinkdinHandle:
                    "https://www.linkedin.com/in/max-weber-9889a3ba/",
              ),
              SpeakerInfoCard(
                speakerImg: "https://i.ibb.co/dDtmsSP/1544709679737.jpg",
                speakerName: "Thomas Burkhart",
                speakerPos: "Flutter Developer",
                speakerTwitterHandle: "https://twitter.com/ThomasBurkhartB",
                speakerLinkdinHandle:
                    "https://www.linkedin.com/in/thomas-burkhart-113767176/",
              ),
            ],
          ),
          gap,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpeakerInfoCard(
                speakerImg: "https://i.ibb.co/1rSWB1L/1613169439882.jpg",
                speakerName: "Sivamuthu Kumar",
                speakerPos: "Architect, Computer Enterprises Inc",
                speakerTwitterHandle: "https://twitter.com/ksivamuthu",
                speakerLinkdinHandle: "https://www.linkedin.com/in/ksivamuthu",
              ),
            ],
          ),
          gap,
          gap,
        ],
      );
    } else if (Responsiveness.isSmallScreen(context)) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Speakers",
            style: TextStyle(
              fontSize: Responsiveness.isSmallScreen(context) ? 35.0 : 65.0,
              color: Colors.white,
            ),
          ),
          gap,
          SpeakerInfoCard(
            speakerImg: "https://i.ibb.co/Lt0GBv9/1516326511397.jpg",
            speakerName: "Andrew Brogdon",
            speakerPos: "Engineer at Flutter DevRel",
            speakerTwitterHandle: "https://twitter.com/redbrogdon",
            speakerLinkdinHandle: "https://www.linkedin.com/in/andrewbrogdon/",
          ),
          gap,
          SpeakerInfoCard(
            speakerImg: "https://i.ibb.co/Ms6j2QR/1516947049112.jpg",
            speakerName: "Max Weber",
            speakerPos: "Engineer at Flutter DevRel",
            speakerTwitterHandle: "https://twitter.com/flutter_exp",
            speakerLinkdinHandle:
                "https://www.linkedin.com/in/max-weber-9889a3ba/",
          ),
          gap,
          SpeakerInfoCard(
            speakerImg: "https://i.ibb.co/dDtmsSP/1544709679737.jpg",
            speakerName: "Thomas Burkhart",
            speakerPos: "Flutter Developer",
            speakerTwitterHandle: "https://twitter.com/ThomasBurkhartB",
            speakerLinkdinHandle:
                "https://www.linkedin.com/in/thomas-burkhart-113767176/",
          ),
          gap,
          SpeakerInfoCard(
            speakerImg: "https://i.ibb.co/1rSWB1L/1613169439882.jpg",
            speakerName: "Sivamuthu Kumar",
            speakerPos: "Architect, Computer Enterprises Inc",
            speakerTwitterHandle: "https://twitter.com/ksivamuthu",
            speakerLinkdinHandle: "https://www.linkedin.com/in/ksivamuthu",
          ),
          gap,
          gap,
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Speakers",
            style: TextStyle(
              fontSize: Responsiveness.isSmallScreen(context) ? 35.0 : 65.0,
              color: Colors.white,
            ),
          ),
          gap,
          SpeakerInfoCard(
            speakerImg: "https://i.ibb.co/Lt0GBv9/1516326511397.jpg",
            speakerName: "Andrew Brogdon",
            speakerPos: "Engineer at Flutter DevRel",
            speakerTwitterHandle: "https://twitter.com/redbrogdon",
            speakerLinkdinHandle: "https://www.linkedin.com/in/andrewbrogdon/",
          ),
          gap,
          SpeakerInfoCard(
            speakerImg: "https://i.ibb.co/Ms6j2QR/1516947049112.jpg",
            speakerName: "Max Weber",
            speakerPos: "Engineer at Flutter DevRel",
            speakerTwitterHandle: "https://twitter.com/flutter_exp",
            speakerLinkdinHandle:
                "https://www.linkedin.com/in/max-weber-9889a3ba/",
          ),
          gap,
          SpeakerInfoCard(
            speakerImg: "https://i.ibb.co/dDtmsSP/1544709679737.jpg",
            speakerName: "Thomas Burkhart",
            speakerPos: "Flutter Developer",
            speakerTwitterHandle: "https://twitter.com/ThomasBurkhartB",
            speakerLinkdinHandle:
                "https://www.linkedin.com/in/thomas-burkhart-113767176/",
          ),
          gap,
          SpeakerInfoCard(
            speakerImg: "https://i.ibb.co/1rSWB1L/1613169439882.jpg",
            speakerName: "Sivamuthu Kumar",
            speakerPos: "Architect, Computer Enterprises Inc",
            speakerTwitterHandle: "https://twitter.com/ksivamuthu",
            speakerLinkdinHandle: "https://www.linkedin.com/in/ksivamuthu",
          ),
          gap,
          gap,
        ],
      );
    }
  }
}
