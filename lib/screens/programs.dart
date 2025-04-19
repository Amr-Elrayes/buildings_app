import 'package:buildings_app/specific_screens/program1_screens/screen1-1.dart';
import 'package:flutter/material.dart';
import '../models/program_model.dart';

class Programs extends StatelessWidget {
  Programs({super.key});

  // ignore: non_constant_identifier_names
  final List<String> ProgramsNames = [
    "شروخ الخرسانة اللدنه",
    "تحليل الاجهادات و التشكل",
    "تحديد أسباب صدأ الحدود",
    "تحديد ثتفت و تاّكل الخرسالة",
    "تحديد أسباب تساقط الخرسانة",
    "تحديد أسباب الشروخ في بلدطات الارضيات",
    "تحديد أسباب الشروخ في الحوائط الساندة و حوائط الخزانات",
    "تحديد أسباب الشروخ في الاساسات",
    "تحديد أسباب الشروخ في البلاطات",
    "تحديد أسباب الشروخ في الكمرات",
    "تحديد أسباب الشروخ في الاعمدة",
    "تحديد أسباب الشروخ في الحوائط"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F0F0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          padding: const EdgeInsets.only(top: 50, bottom: 40),
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'البرامج التشخيصية',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3B221A),
                  fontFamily: 'Cairo',
                ),
              ),
            ),
            const SizedBox(height: 20),

            // العناصر الأساسية
            ...List.generate(ProgramsNames.length, (index) {
              return ProgramModel(
                text: ProgramsNames[index],
                number: (index + 1).toString(),
              );
            }),

            const SizedBox(height: 30),

            // زر "التالي"
            GestureDetector(
              onTap: () {
                  Navigator.pushNamed(context, Screen1_1.id);
              },
              child: Container(
                width: double.infinity,
                height: 44,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff40251F),
                ),
                child: Text(
                  'ابدأ من اول برنامج',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Cairo',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),

            const SizedBox(height: 15),

            // زر "رجوع"
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: 44,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff40251F),
                ),
                child: Text(
                  'رجوع',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Cairo',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),

            const SizedBox(height: 30), // مساحة سفلية للشكل الجمالي
          ],
        ),
      ),
    );
  }
}
