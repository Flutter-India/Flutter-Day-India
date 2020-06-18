import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdaysindia/utils/app_info.dart';


import 'organizerhandle.dart';

class OrganizerList extends StatefulWidget {
  @override
  _OrganizerListState createState() => _OrganizerListState();
}

class _OrganizerListState extends State<OrganizerList> {
  var new_Data;
  List<Widget> widgets;
  Widget gap = SizedBox(
    width: 15.0,
  );
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      String jsonData = await rootBundle.loadString(AppInfo.organizerjson);
      new_Data = json.decode(jsonData.toString());
      print(new_Data);
      widgets = List.generate(
          9,
          (index) => SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      new_Data[index]["organizer_name"],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: CircleLogo(new_Data[index]["logo"]),
                          backgroundColor: AppInfo.backgroundColor,
                          radius: 35.0,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        OrganizerMeetup(
                            string: new_Data[index]["meetup_handle"]),
                        SizedBox(
                          width: 15.0,
                        ),
                        OrganizerTwitter(
                          string: new_Data[index]["twitter_handle"],
                        ),
                      ],
                    ),
                  ],
                ),
              ));
//      await Future.delayed(Duration(seconds: 5));

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return new_Data == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Wrap(
            spacing: 20,
            runSpacing: 20,
            runAlignment: WrapAlignment.center,
            children: widgets,
          );
  }
}

ImageProvider CircleLogo(String string) {
  String defaultLogoUrl =
      "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png";

  return CachedNetworkImageProvider(string ?? defaultLogoUrl);
}
