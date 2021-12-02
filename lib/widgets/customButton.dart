import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  // const CustomButton({Key? key}) : super(key: key);
  // عند استخدام custom widget لو نبغا تكون البيانات متغيره نعمل مثل الذي تحت
  CustomButton(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        // لعمل البوردر
        border: Border.all(width: 0.3, color: const Color(0xFFFFFFFF)),
        // لعمل الانحناء للبوردر
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(this.text,
            style: TextStyle(color: const Color(0xFFFFFFFF), fontSize: 15)),
      ),
    );
  }
}
