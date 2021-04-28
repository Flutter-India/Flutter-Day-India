import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/responsiveness.dart';
import 'package:flutterdaysindia/utils/app_info.dart';
import 'package:flutterdaysindia/widgets/cfpButton.dart';

class CFPPage extends StatelessWidget {
  static String tag = "/CFPPage";

  SizedBox gap = SizedBox(
    height: 50.0,
  );

  containerHeight({required BuildContext context}) {
    return Responsiveness.isSmallScreen(context)
        ? MediaQuery.of(context).size.height / 1.5
        : MediaQuery.of(context).size.height / 2;
  }

  Image cfpImage({required BuildContext context}) {
    return Image.asset(
      "assets/animations/mypersonalLogo.gif",
      width: MediaQuery.of(context).size.width / 2,
    );
  }

  Text HeaderText({required BuildContext context}) {
    String text = Responsiveness.isSmallScreen(context)
        ? "Speak at Flutter Day India"
        : "Speak at\nFlutter Day India";
    return Text(
      text,
      style: TextStyle(
        fontFamily: AppInfo.textFont,
        color: Colors.white,
        fontSize: HeaderFont(context: context),
      ),
      textAlign: TextAlign.center,
    );
  }

  double HeaderFont({required BuildContext context}) {
    if (Responsiveness.isLargeScreen(context)) {
      return 70.0;
    } else if (Responsiveness.isMediumScreen(context)) {
      return 47.0;
    } else {
      return 23.0;
    }
  }

  Widget cfpFormat(BuildContext context) {
    if (!Responsiveness.isSmallScreen(context))
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          cfpImage(context: context),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HeaderText(context: context),
                gap,
                cfpButton(
                  textSize: 25.0,
                ),
              ],
            ),
          ),
        ],
      );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        cfpImage(context: context),
        Center(child: HeaderText(context: context)),
        gap,
        cfpButton(
          textSize: 15.0,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight(context: context),
      width: MediaQuery.of(context).size.width,
      child: cfpFormat(context),
    );
  }
}
