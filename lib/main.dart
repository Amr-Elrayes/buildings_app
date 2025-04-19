import 'package:buildings_app/screens/openning_page1.dart';
import 'package:buildings_app/specific_screens/program1_screens/screen1-1.dart';
import 'package:flutter/material.dart';

import 'specific_screens/program10_screens/screen10-1.dart';
import 'specific_screens/program11_screens/screen11-1.dart';
import 'specific_screens/program12_screens/screen12-1.dart';
import 'specific_screens/program2_screens/screen2-1.dart';
import 'specific_screens/program3_screens/screen3-1.dart';
import 'specific_screens/program4_screens/screen4-1.dart';
import 'specific_screens/program5_screens/screen5-1.dart';
import 'specific_screens/program6_screens/screen6-1.dart';
import 'specific_screens/program7_screens/screen7-1.dart';
import 'specific_screens/program8_screens/screen8-1.dart';
import 'specific_screens/program9_screens/screen9-1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Screen1_1.id : (context) => Screen1_1(),
        Screen2_1.id : (context) => Screen2_1(),
        Screen3_1.id : (context) => Screen3_1(),
        Screen4_1.id : (context) => Screen4_1(),
        Screen5_1.id : (context) => Screen5_1(),
        Screen6_1.id : (context) => Screen6_1(),
        Screen7_1.id : (context) => Screen7_1(),
        Screen8_1.id : (context) => Screen8_1(),
        Screen9_1.id : (context) => Screen9_1(),
        Screen10_1.id : (context) => Screen10_1(),
        Screen11_1.id : (context) => Screen11_1(),
        Screen12_1.id : (context) => Screen12_1(),
      },
      debugShowCheckedModeBanner: false,
      home: OpenningPage1(),
    );
  }
}
