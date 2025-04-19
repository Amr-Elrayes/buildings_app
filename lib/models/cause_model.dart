import 'package:flutter/material.dart';

class CauseItem extends StatelessWidget {
  final String text;
  final int number;

  const CauseItem({super.key, required this.text, required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Color(0xFF3B221A), // لون بني
            child: Text(
              '$number',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo',
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            '$text',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w200,
              color: Color(0xFF3B221A), // اللون البني الغامق
              fontFamily: 'Cairo', // إذا كنت تستخدم الخط
            ),
          ),
          // الدائرة بالرقم
        ],
      ),
    );
  }
}
