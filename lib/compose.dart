import 'package:flutter/material.dart';
import 'appTheme.dart';
import 'customButton.dart';

class Compose extends StatelessWidget {
  const Compose({Key? key}) : super(key: key);
  //وظيفه الثلاث الكوتس انه يجعل الكلام تحت بعض
  // الطريقه نضع في اول السطر
  final String title = '''
  Compose your
  own meal
  '''; // وفي اخر السطر
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            // وضيفته يرتب المحتوى
            Positioned(
              child: Text(
                title,
                style: Apptheme.darkTextTheme.headline3,
                textAlign: TextAlign.center,
              ),
              // لجعل العنوان في الامام واليمين
              top: 5,
              right: 0,
            ),
            Positioned(
              child: CustomButton('compose meal'),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        // لاعطاء عرض وطول للكونتيتر بشكل ثابت بحين يتوافق عرضه وطوله في كل جهاز
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 171,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/compose.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
