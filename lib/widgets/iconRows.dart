import 'package:flutter/material.dart';

import 'logoIcon.dart';

class iconTopRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        logoIcon(
          iconpath: "assets/images/svg/3Drect.svg",
          paddingTop: 170.0,
        ),
        logoIcon(
          iconpath: "assets/images/svg/dart.svg",
          paddingTop: 120.0,
        ),
        logoIcon(
          iconpath: "assets/images/svg/gdg.svg",
          paddingTop: 170.0,
        ),
        logoIcon(
          iconpath: "assets/images/svg/like.svg",
          paddingTop: 200.0,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
    );
  }
}

class iconBottomRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        logoIcon(
          iconpath: "assets/images/svg/iphone.svg",
          paddingTop: 170.0,
        ),
        logoIcon(
          iconpath: "assets/images/svg/scale.svg",
          paddingTop: 120.0,
        ),
        logoIcon(
          iconpath: "assets/images/svg/android.svg",
          paddingTop: 170.0,
        ),
        logoIcon(
          iconpath: "assets/images/svg/material_io.svg",
          paddingTop: 200.0,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
