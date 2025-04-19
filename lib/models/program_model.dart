import 'package:flutter/material.dart';

class ProgramModel extends StatelessWidget {
  final String text;
  final String number;
  const ProgramModel({super.key, required this.text, required this.number});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, number , arguments: text);
      },
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: Color(0xFFD9B28C), // اللون البيج
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: Color(0xFF3B221A), width: 3), // الحافة السفلية الغامقة
          ),
          child: Row(
            textDirection: TextDirection.rtl,
            crossAxisAlignment:
                CrossAxisAlignment.start, // مهم جدًا لو فيه أكثر من سطر
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: Color(0xFF3B221A),
                child: Text(
                  '$number',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                // ← هذا يسمح للنص بالتمدد عموديًا بدلًا من أفقيًا
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3B221A),
                    fontFamily: 'Cairo',
                  ),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  textDirection: TextDirection.rtl,
                ),
              ),
            ],
          )),
    );
  }
}
