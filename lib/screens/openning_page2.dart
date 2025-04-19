import 'package:buildings_app/screens/causes.dart';
import 'package:flutter/material.dart';

class OpenningPage2 extends StatelessWidget {
  const OpenningPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F0F0),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 30),
        child: Center(
          child: Column(
            children: [
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
              Text(
                'في عالم البناء والإنشاءات، تظهر العديد من المشكلات التي قد تؤثر على سلامة المباني واستدامتها.',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Color(0xff40251F),
                  fontSize: 20,
                  fontFamily: 'Cairo',
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'ضمم هذا التطبيق خصيصاً لمساعدة المهندسين والمختصين على تشخيص حالات التدهور المختلفة في المنشآت والمباني بدقة واحترافية، من خلال مجموعة من البرامج المتخصصة التي تعتمد على طرح أسئلة بطريقة بسيطة (نعم / لا) للوصول إلى السبب الجذري للمشكلة.',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Color(0xff40251F),
                  fontSize: 20,
                  fontFamily: 'Cairo',
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'هدفنا هو دعم قراراتك الفنية وتمكينك من اتخاذ الخطوة المناسبة للحفاظ على كفاءة المنشأ وسلامته.',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Color(0xff40251F),
                  fontSize: 20,
                  fontFamily: 'Cairo',
                ),
              ),
              SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Causes();
                    }),
                  );
                },
                child: Container(
                  width: 370,
                  height: 44,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff40251F),
                  ),
                  child: Text(
                    'ابدأ الان',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
