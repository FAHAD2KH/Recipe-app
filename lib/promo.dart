import 'package:flutter/material.dart';

class Promo extends StatelessWidget {
 // const Promo ({Key? key}) : super(key: key);
  // لكي تكون البيانات متغيره
  Promo(this.title , this.subtitle,this.img);
  final String title; // لتغيير بيانات النص
  final String subtitle; // لتغيير بيانات عنوان النص
  final String img; // لتغيير بيانات الصوره
  @override
  Widget build(BuildContext context) {
    return Stack(
            children: [
              Card(
                child: Image.asset(img),
              ),
                 Positioned(
                  // width: 200,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      backgroundColor: Colors.black12,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  bottom: 33.6,
                  left: 12.6,
                ),
                 Positioned(
                  child: Text(
                      subtitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.6,
                      backgroundColor: Colors.black12,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  bottom: 10,
                  left: 6.3,
                ),
            ],
            alignment: Alignment.bottomLeft,
    );
  }
}
