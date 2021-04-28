import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class logoIcon extends StatelessWidget {
  logoIcon({
    required this.iconpath,
    required this.paddingTop,
  })  : assert(iconpath != null),
        assert(paddingTop != null || paddingTop > 0);
  final String iconpath;
  final double paddingTop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: WebsafeSvg.asset(
        iconpath,
        fit: BoxFit.scaleDown,
        width: 150.0,
        height: 150.0,
      ),
    );
  }
}
