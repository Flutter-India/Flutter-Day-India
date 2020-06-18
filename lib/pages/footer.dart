import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/responsiveness.dart';

import '../utils/app_info.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Made with Flutter 💙",
              style: TextStyle(
                color: AppInfo.textColor,
                fontSize: Responsiveness.isSmallScreen(context) ? 15.0 : 20.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 13.0,
                left: 10.0,
                right: 10.0,
              ),
              child: Text(
                "Flutter and the related logo are trademarks of Google LLC. Flutter India is not affiliated with or otherwise sponsored by Google LLC.",
                style: TextStyle(
                  color: AppInfo.textColor,
                  fontSize: Responsiveness.isSmallScreen(context) ? 12.0 : 20.0,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
