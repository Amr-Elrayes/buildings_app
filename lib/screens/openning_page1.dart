import 'dart:async';
import 'package:flutter/material.dart';
import 'openning_page2.dart'; // Make sure this file exists and is imported correctly

class OpenningPage1 extends StatefulWidget {
  const OpenningPage1({super.key});

  @override
  State<OpenningPage1> createState() => _OpenningPage1State();
}

class _OpenningPage1State extends State<OpenningPage1> {
  @override
  void initState() {
    super.initState();
    // Navigate after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OpenningPage2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F0F0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Icon.png',
              width: 121,
              height: 121,
            ),
            Text(
              'تشخيص المنشآت',
              style: TextStyle(
                color: Color(0xff40251F),
                fontSize: 35,
                fontFamily: 'Cairo',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
