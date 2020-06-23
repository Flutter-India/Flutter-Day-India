import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutterdaysindia/widgets/sessionCard.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 35.0, right: 35.0),
        child: schedule(context: context),
      ),
    );
  }

  schedule({BuildContext context}) {
    return Column(
      children: [
        Text(
          "Schedule",
          style: GoogleFonts.roboto(color: Colors.white, fontSize: 50.0),
        ),
        SizedBox(
          height: 20.0,
        ),
        LargeScreenSchedule()
      ],
    );
  }
}

class LargeScreenSchedule extends StatelessWidget {
  Widget gap = SizedBox(
    height: 30.0,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sessionCard(
          time: "10:30AM - IST",
          sessionTitle: "Keynote",
          speakerName: 'Vivek Yadav',
          speakerUrl: "https://twitter.com/viveky259259",
          sessionDescription:
              "What is Flutter Day? And what are we doing on your screen today? Fitz kicks off the day and sets the stage for what to expect.",
        ),
        gap,
        sessionCard(
          time: "11:00AM - IST",
          sessionTitle: "#AskFlutterIndia: Flutter",
          speakerName: "Andrew Brogdon",
          speakerUrl: "https://twitter.com/viveky259259",
          sessionDescription:
              "What is Flutter Day? And what are we doing on your screen today? Fitz kicks off the day and sets the stage for what to expect.",
        ),
        gap,
        sessionCard(
          time: "11:30AM - IST",
          sessionTitle: "Session 1",
          speakerName: "Andrew Brogdon",
          speakerUrl: "https://twitter.com/viveky259259",
          sessionDescription:
              "What is Flutter Day? And what are we doing on your screen today? Fitz kicks off the day and sets the stage for what to expect.",
        ),
        gap,
        sessionCard(
          time: "12:10PM - IST",
          sessionTitle: "Kahoot",
          speakerName: "Andrew Brogdon",
          speakerUrl: "https://twitter.com/viveky259259",
          sessionDescription:
              "What is Flutter Day? And what are we doing on your screen today? Fitz kicks off the day and sets the stage for what to expect.",
        ),
        gap,
        sessionCard(
          time: "12:20PM - IST",
          sessionTitle: "Session 2",
          speakerName: "Andrew Brogdon",
          speakerUrl: "https://twitter.com/viveky259259",
          sessionDescription:
              "What is Flutter Day? And what are we doing on your screen today? Fitz kicks off the day and sets the stage for what to expect.",
        ),
        gap,
        gap,
      ],
    );
  }
}
