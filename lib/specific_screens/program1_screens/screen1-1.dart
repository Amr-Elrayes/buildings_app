import 'package:buildings_app/models/program%E2%80%98s_1st_page.dart';
import 'package:buildings_app/specific_screens/program1_screens/if_no_page.dart';
import 'package:buildings_app/specific_screens/program1_screens/if_yes_page.dart';
import 'package:flutter/material.dart';

class Screen1_1 extends StatelessWidget {
  const Screen1_1({super.key});
  static String id = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F0F0),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 30),
        child: Center(
          child: Column(
            children: [
              Programs1stPage(
                Yroute: IfYesPage(),
                Nroute: IfNoPage(),
                pnum: 'الاول',
                question:
                    'هل حدثت الشروخ قبل تصلد الخرسانة ( وقت الظهور من 30 دقيقة الى 6 ساعة )؟',
              )
            ],
          ),
        ),
      ),
    );
  }
}
