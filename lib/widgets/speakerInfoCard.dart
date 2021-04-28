import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/launchString.dart';
import 'package:flutterdaysindia/services/responsiveness.dart';
import 'package:flutterdaysindia/utils/app_info.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SpeakerInfoCard extends StatelessWidget {
  final String? speakerImg;
  final String? speakerName;
  final String? speakerPos;
  final String? speakerTwitterHandle;
  final String? speakerLinkdinHandle;

  SpeakerInfoCard(
      {Key? key,
      this.speakerImg,
      this.speakerName,
      this.speakerPos,
      this.speakerTwitterHandle,
      this.speakerLinkdinHandle});

  @override
  Widget build(BuildContext context) {
    double imageDimension(context) {
      if (Responsiveness.isLargeScreen(context))
        return 300;
      else if (Responsiveness.isMediumScreen(context))
        return 250;
      else
        return 150;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Container(
            height: imageDimension(context),
            width: imageDimension(context),
            child: CachedNetworkImage(
              imageUrl: speakerImg!,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            speakerName!,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            speakerPos!,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Launch.launchUrl(speakerTwitterHandle!),
                child: Image.asset(
                  AppInfo.twitterIcon,
                  height: 50,
                  width: 50,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              InkWell(
                onTap: () => Launch.launchUrl(speakerLinkdinHandle!),
                child: WebsafeSvg.asset(
                  AppInfo.linkdinIcon,
                  height: 50,
                  width: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
