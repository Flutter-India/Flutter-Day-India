import 'package:flutter/material.dart';

import '../utils/app_info.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Made with Flutter 💙",
            style: TextStyle(
              color: AppInfo.textColor,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 13.0),
            child: Text(
              "Flutter and the related logo are trademarks of Google LLC. Flutter India is not affiliated with or otherwise sponsored by Google LLC.",
              style: TextStyle(
                color: AppInfo.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
