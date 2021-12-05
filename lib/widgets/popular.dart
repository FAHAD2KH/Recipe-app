import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';

class Popular2 extends StatelessWidget {
  const Popular2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // Recipe Photo
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blueGrey,
              image: DecorationImage(
                  image: AssetImage('assets/images/Food.png'),
                  fit: BoxFit.cover),
            ),
          ),
          // Recipe Info
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Recipe title
                  Container(
                    margin: EdgeInsets.only(bottom: 6),
                    child: Text('Recipe name',
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  // Rating

                  Container(
                    // margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        RatingBar.builder(
                          itemSize: 18.4,
                          initialRating: 4, // تحديد التقييم
                          minRating: 1, // يعين الحد الأدنى من التقييم
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount:
                              5, // يحدد العدد الإجمالي لعناصر شريط التقييم
                          itemPadding: EdgeInsets.symmetric(
                              horizontal: 0.0, vertical: 0.0),
                          itemBuilder: (context, _) => SvgPicture.asset(
                            'assets/icon/ico_rating.svg',
                            width: 12,
                            height: 12,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Text(
                          " 9.0",
                          style: TextStyle(
                              fontSize: 15.2, color: Colors.orangeAccent),
                        ),
                      ],
                    ),
                  ),
                  // Recipe Diffculties and Time
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icon/ico_rate.svg',
                        width: 12,
                        height: 12,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          'Easy',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.alarm,
                        size: 14,
                        color: Color.fromRGBO(252, 139, 86, 1),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          '20 m ',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  // Recipe Buttons ..
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 120,
                        child: GFButton(
                          onPressed: () {},
                          color: Color.fromRGBO(255, 246, 235, 1),
                          textColor: Color.fromRGBO(252, 139, 86, 1),
                          // (252, 139, 86)
                          text: 'Check Recipe',
                          textStyle: TextStyle(
                              color: Color.fromRGBO(252, 139, 86, 1),
                              fontWeight: FontWeight.bold),
                          shape: GFButtonShape.pills,
                        ),
                      ),
                      Container(
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              width: 30,
                              child: GFIconButton(
                                onPressed: () {},
                                borderShape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0))),
                                color: Color.fromRGBO(255, 246, 235, 1),
                                // textColor: Color.fromRGBO(252, 139, 86, 1),
                                icon: FaIcon(
                                  FontAwesomeIcons.shareAlt,
                                  color: Color.fromRGBO(252, 139, 86, 1),
                                  size: 18,
                                ),
                              ),
                            ),
                            Container(
                              width: 30,
                              child: GFIconButton(
                                onPressed: () {},
                                color: Color.fromRGBO(255, 246, 235, 1),
                                // textColor: Color.fromRGBO(252, 139, 86, 1),
                                icon: FaIcon(
                                  FontAwesomeIcons.solidBookmark,
                                  color: Color.fromRGBO(252, 139, 86, 1),
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// طرق الدفع ، التوصيل ، شكل العلبه ، الضمان الذهبي ، عروضنا
