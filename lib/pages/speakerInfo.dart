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
                speakerImg:
                    "https://pbs.twimg.com/profile_images/651444930884186112/9vlhNFlu_400x400.png",
                speakerName: "Andrew Brogdon",
                speakerPos: "Engineer at Flutter DevRel",
                speakerTwitterHandle: "https://twitter.com/redbrogdon",
                speakerLinkdinHandle:
                    "https://www.linkedin.com/in/andrewbrogdon/",
              ),
              SpeakerInfoCard(
                speakerImg:
                    "https://media-exp1.licdn.com/dms/image/C5603AQHdOLVMbMqung/profile-displayphoto-shrink_800_800/0?e=1598486400&v=beta&t=KJEPAExMfj-plbbTGNO3vSSfVhSBUSHfc83H7QFSRRo",
                speakerName: "Max Weber",
                speakerPos: "Engineer at Flutter DevRel",
                speakerTwitterHandle: "https://twitter.com/flutter_exp",
                speakerLinkdinHandle:
                    "https://www.linkedin.com/in/max-weber-9889a3ba/",
              ),
              SpeakerInfoCard(
                speakerImg:
                    "https://pbs.twimg.com/profile_images/703124108402266112/871VjZx0_400x400.jpg",
                speakerName: "Thomas Burkhart",
                speakerPos: "Flutter Developer",
                speakerTwitterHandle: "https://twitter.com/ThomasBurkhartB",
                speakerLinkdinHandle:
                    "https://www.linkedin.com/in/thomas-burkhart-113767176/",
              ),
            ],
          ),
          gap,
          gap,
        ],
      );
    } else if(Responsiveness.isSmallScreen(context)) {
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
            speakerImg:
            "https://pbs.twimg.com/profile_images/651444930884186112/9vlhNFlu_400x400.png",
            speakerName: "Andrew Brogdon",
            speakerPos: "Engineer at Flutter DevRel",
            speakerTwitterHandle: "https://twitter.com/redbrogdon",
            speakerLinkdinHandle:
            "https://www.linkedin.com/in/andrewbrogdon/",
          ),
          gap,
          SpeakerInfoCard(
            speakerImg:
            "https://media-exp1.licdn.com/dms/image/C5603AQHdOLVMbMqung/profile-displayphoto-shrink_800_800/0?e=1598486400&v=beta&t=KJEPAExMfj-plbbTGNO3vSSfVhSBUSHfc83H7QFSRRo",
            speakerName: "Max Weber",
            speakerPos: "Engineer at Flutter DevRel",
            speakerTwitterHandle: "https://twitter.com/flutter_exp",
            speakerLinkdinHandle:
            "https://www.linkedin.com/in/max-weber-9889a3ba/",
          ),
          gap,
          SpeakerInfoCard(
            speakerImg:
            "https://pbs.twimg.com/profile_images/703124108402266112/871VjZx0_400x400.jpg",
            speakerName: "Thomas Burkhart",
            speakerPos: "Flutter Developer",
            speakerTwitterHandle: "https://twitter.com/ThomasBurkhartB",
            speakerLinkdinHandle:
            "https://www.linkedin.com/in/thomas-burkhart-113767176/",
          ),
          gap,
          gap,
        ],
      );
    }
    else if(Responsiveness.isMediumScreen(context)) {
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
            speakerImg:
            "https://pbs.twimg.com/profile_images/651444930884186112/9vlhNFlu_400x400.png",
            speakerName: "Andrew Brogdon",
            speakerPos: "Engineer at Flutter DevRel",
            speakerTwitterHandle: "https://twitter.com/redbrogdon",
            speakerLinkdinHandle:
            "https://www.linkedin.com/in/andrewbrogdon/",
          ),
          gap,
          SpeakerInfoCard(
            speakerImg:
            "https://media-exp1.licdn.com/dms/image/C5603AQHdOLVMbMqung/profile-displayphoto-shrink_800_800/0?e=1598486400&v=beta&t=KJEPAExMfj-plbbTGNO3vSSfVhSBUSHfc83H7QFSRRo",
            speakerName: "Max Weber",
            speakerPos: "Engineer at Flutter DevRel",
            speakerTwitterHandle: "https://twitter.com/flutter_exp",
            speakerLinkdinHandle:
            "https://www.linkedin.com/in/max-weber-9889a3ba/",
          ),
          gap,
          SpeakerInfoCard(
            speakerImg:
            "https://pbs.twimg.com/profile_images/703124108402266112/871VjZx0_400x400.jpg",
            speakerName: "Thomas Burkhart",
            speakerPos: "Flutter Developer",
            speakerTwitterHandle: "https://twitter.com/ThomasBurkhartB",
            speakerLinkdinHandle:
            "https://www.linkedin.com/in/thomas-burkhart-113767176/",
          ),
          gap,
          gap,
        ],
      );
    }
  }
}
