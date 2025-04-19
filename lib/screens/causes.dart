import 'package:buildings_app/screens/programs.dart';
import 'package:flutter/material.dart';
import '../models/cause_model.dart';

class Causes extends StatelessWidget {
  Causes({super.key});

  final List<String> mainCauses = [
    'طبيعية (انكماش)',
    'صدأ الحديد',
    'كيميائية (أحماض/املاح)',
    'حرارية (تقلص/تمدد)',
    'قصور تصميم (اخطاء)',
    'قصور تفاصيل',
    'تحميل زائد',
    'فروق هبوط',
    'أخطاء التنفيذ',
    'ظروف محيطة',
    'موجات صدمية',
    'عوامل البري و التآكل',
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
                'اسباب التدهور الرئيسية',
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
            ...List.generate(mainCauses.length, (index) {
              return CauseItem(
                text: mainCauses[index],
                number: index + 1,
              );
            }),

            const SizedBox(height: 30),

            // زر "التالي"
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Programs()),
                );
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
                  'التالي',
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
