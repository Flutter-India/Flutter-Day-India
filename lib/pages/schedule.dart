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
    height: 50.0,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sessionCard(
          time: "10:00AM - IST",
          sessionTitle: "Keynote",
          speakerName: 'Vivek Yadav',
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
          sessionTitle: "Going back to Basics [Dart Touch & Gestures]",
          speakerName: "Make Stories Team",
          speakerUrl: "https://twitter.com/GhelaPratik",
          sessionDescription:
              "Flutter provides a variety of widgets through which we can build any kind of UI. But more than a design, your app should be interactive to give an experience that users just fall in love with. At MakeStories, user experience matters a lot as we are a design tool for stories. One such requirement popped up when we had to create an experience for dragging, resizing, tapping and much more. That’s when we used the default touch class of Dart Library. We could have used Gestures that represent semantic actions (for example, tap, drag, and scale) that are recognized from multiple individual pointer events, potentially even multiple individual pointers. Gestures can dispatch multiple events, corresponding to the lifecycle of the gesture (for example, drag start, drag update, and drag end).In our apps we use Gestures, Drag, Resizeable properties and add some methods for taping like ontap, stack, active, inactive, onDrag, rotation of widgets and we are also play with states, height, width in flutter.GestureDetector Allows only one function on the widget at a time either dragging or scaling but we need both of these function on same widget in our project so we have used default touch class of dart library to achieve both dragging and scaling on same widget",
        ),
        gap,
        sessionCard(
          time: "11:30AM - IST",
          sessionTitle: "Kahoot",
          speakerName: "Flutter India",
          speakerUrl: "https://twitter.com/IndiaFlutter",
          sessionDescription:
              "Fun Time!",
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
          sessionDescription:
          "Fun Time!",
        ),
        gap,
        sessionCard(
          time: "12:30PM - IST",
          sessionTitle: "Get_It in action - make your life easier with a Service Locator",
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
