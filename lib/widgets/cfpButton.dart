import 'package:flutter/material.dart';
import 'package:flutterdaysindia/services/launchString.dart';

class cfpButton extends StatelessWidget {
  final double textSize;

  const cfpButton({this.textSize});

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => Launch.launchUrl(
        "https://sessionize.com/flutter-day-india",
      ),
      child: Text(
        "Call for Proposal",
        style: TextStyle(
          fontSize: textSize,
          color: Colors.white,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      padding: EdgeInsets.all(16.0),
      borderSide: BorderSide(
        color: Colors.white,
        width: 4.0,
      ),
    );
  }
}
