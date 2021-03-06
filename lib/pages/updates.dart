import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/responsiveness.dart';

class Updates extends StatelessWidget {
  double updateFont(BuildContext context) {
    if (Responsiveness.isSmallScreen(context))
      return 25.0;
    else if (Responsiveness.isLargeScreen(context))
      return 75.0;
    else
      return 45.0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ghost(context: context),
          Text(
            "Stay tuned for more updates",
            style: TextStyle(
              fontSize: updateFont(context),
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 150.0,
          ),
        ],
      ),
    );
  }

  Image ghost({required BuildContext context}) {
    return Responsiveness.isSmallScreen(context)
        ? Image.asset(
            "assets/animations/ghost.gif",
          )
        : Image.asset(
            "assets/animations/ghost.gif",
            scale: 2,
          );
  }
}
