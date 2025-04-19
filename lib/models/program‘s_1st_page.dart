import 'package:buildings_app/screens/openning_page2.dart';
import 'package:flutter/material.dart';

class Programs1stPage extends StatelessWidget {
  final String question;
  final String pnum;
  final Object Yroute;
  final Object Nroute;
  const Programs1stPage(
      {super.key, required this.question, required this.pnum, required this.Yroute, required this.Nroute});

  @override
  Widget build(BuildContext context) {
    final String programName =
        ModalRoute.of(context)!.settings.arguments as String;
    return Column(children: [
      Text(
        'تشخيص المنشآت',
        style: TextStyle(
          color: Color(0xff40251F),
          fontSize: 35,
          fontFamily: 'Cairo',
        ),
      ),
      SizedBox(
        height: 40,
      ),
      Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: const Color(0xffD9AE89),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xff734230),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'البرنامج $pnum',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: const Color(0xffF2F0F0),
                  fontSize: 15,
                  fontFamily: 'Cairo',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              programName,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: const Color(0xff40251F),
                fontSize: 20,
                fontFamily: 'Cairo',
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xff40251F),
                  width: 3,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    question,
                    softWrap: true,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: const Color(0xff40251F),
                      fontSize: 18,
                      fontFamily: 'Cairo',
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Nroute as Widget,
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xff40251F),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('لا',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Cairo',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textDirection: TextDirection.rtl),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Yroute as Widget,
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xff40251F),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('نعم',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Cairo',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textDirection: TextDirection.rtl),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 50,
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => const OpenningPage2(),
          ));
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
            'الصفحة الرئيسية',
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
    ]);
  }
}
