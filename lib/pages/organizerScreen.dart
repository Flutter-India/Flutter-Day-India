import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutterdaysindia/widgets/organizerList.dart';


class OrganizerScreen extends StatelessWidget {
  Widget gap = SizedBox(
    height: 50.0,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            "Organized by",
            style: TextStyle(
              fontSize: 65.0,
              color: Colors.white,
            ),
          ),
          gap,
          OrganizerList(),
          gap,
          gap,
        ],
      ),
    );
  }
}
