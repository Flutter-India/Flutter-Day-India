import 'package:flutter/material.dart';

import 'pages/HomePage.dart';
import 'utils/app_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      darkTheme: ThemeData(
        canvasColor: AppInfo.backgroundColor,
        scaffoldBackgroundColor: AppInfo.backgroundColor,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white54,
        ),
      ),
      theme: ThemeData.dark(),
    );
  }
}
