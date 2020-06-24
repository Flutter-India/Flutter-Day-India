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
          height: 40.0,
        ),
        LargeScreenSchedule()
      ],
    );
  }
}

class LargeScreenSchedule extends StatelessWidget {
  Widget gap = SizedBox(
    height: 50.0,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sessionCard(
          time: "10:00AM - IST",
          sessionTitle: "Keynote",
          speakerName: 'Flutter India',
          speakerUrl: "https://twitter.com/viveky259259",
          sessionDescription:
              "What is Flutter Day? And what are we doing on your screen today? Fitz kicks off the day and sets the stage for what to expect.",
        ),
        gap,
        sessionCard(
          time: "10:30AM - IST",
          sessionTitle: "QnA session",
          speakerName: "Andrew Brogdon",
          speakerUrl: "https://twitter.com/redbrogdon",
          sessionDescription:
              "A Question and Answer session with Andrew about the latest technologies in Flutter and dart. ",
        ),
        gap,
        sessionCard(
          time: "11:00AM - IST",
//          sessionTitle: "Going back to Basics [Dart Touch & Gestures]",
//          speakerName: "Make Stories Team",
//          speakerUrl: "https://twitter.com/GhelaPratik",
//          sessionDescription:
//              "Join Pratik, Yash, and Anil to discover how you can make Flutter Applications interactive using Gestures, Drag, and Resizable Properties using the Default touch class of dart library.",
          sessionTitle: "Flutter Apps powered by GraphQL with Hasura",
          speakerName: "Sivamuthu Kumar",
          speakerUrl: "https://twitter.com/ksivamuthu",
          sessionDescription:
              "Modern applications are increasingly data-driven, which leads to a lot of time spent fetching, filtering, and aggregating data. GraphQL is a query language for your API which reduces the complexity associated with data fetching lets developers describe the complex, nested data dependencies of modern applications. In this session, We will discuss how to build high-performance GraphQL apps with Flutter and the demo how to quickly spin up the GraphQL server with Hasura and integrate the GraphQL backend in Flutter using GraphQL Client libraries, featuring GraphQL capabilities such as Query, Mutation, and Subscription. We will discuss tips and tricks to getting started with building GraphQL powered Flutter apps.",
        ),
        gap,
        sessionCard(
          time: "11:30AM - IST",
          sessionTitle: "Kahoot",
          speakerName: "Flutter India",
          speakerUrl: "https://twitter.com/IndiaFlutter",
          sessionDescription: "Fun Time!",
        ),
        gap,
        sessionCard(
          time: "11:40AM - IST",
          sessionTitle: "Skyrocket your performance with Background Tasks",
          speakerName: "Max Weber",
          speakerUrl: "https://twitter.com/flutter_exp",
          sessionDescription:
              "Background Tasks are a main capability of Flutter to reduce the load of the main thread, and you can do heavy calculations on a different Isolate. Isolates gives us the option to do tasks behind the scenes, and it is also possible to bring your app to sleep.",
        ),
        gap,
        sessionCard(
          time: "12:15PM - IST",
          sessionTitle: "Kahoot",
          speakerName: "Flutter India",
          speakerUrl: "https://twitter.com/IndiaFlutter",
          sessionDescription: "Fun Time!",
        ),
        gap,
        sessionCard(
          time: "12:30PM - IST",
          sessionTitle:
              "Get_It in action - make your life easier with a Service Locator",
          speakerName: "Thomas Burkhart",
          speakerUrl: "https://twitter.com/ThomasBurkhartB",
          sessionDescription:
              "Although Provider is the most promoted way to access your business logic from your UI, get_it has a large 'underground' fan group as an alternative. This talk will show you why you should have a look at get_it and how you use it.",
        ),
        gap,
        gap,
      ],
    );
  }
}
