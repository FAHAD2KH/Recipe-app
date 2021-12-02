import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// ممكن بعدين نخلي البيانات متغيره

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/img.png",
        ),
        Container(
          margin: EdgeInsets.only(left: 9.6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recipe name",
                style: Theme.of(context).textTheme.headline6,
              ),
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 18.4,
                    initialRating: 4, // تحديد التقييم
                    minRating: 1, // يعين الحد الأدنى من التقييم
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5, // يحدد العدد الإجمالي لعناصر شريط التقييم
                    itemPadding:
                        EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Text(
                    "9.0",
                    style:
                        TextStyle(fontSize: 15.2, color: Colors.orangeAccent),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 25.4,
                    initialRating: 1, // تحديد التقييم
                    minRating: 1, // يعين الحد الأدنى من التقييم
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 3, // يحدد العدد الإجمالي لعناصر شريط التقييم
                    itemPadding:
                        EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(
                    width: 5.2,
                  ),
                  Text("Easy"),
                  SizedBox(
                    width: 16.2,
                  ),
                  Icon(
                    Icons.query_builder_outlined,
                    color: Colors.orangeAccent,
                  ),
                  SizedBox(
                    width: 5.2,
                  ),
                  Text("20 m"),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                      ),
                      child: Text(
                        "Check recipe",
                        style: TextStyle(color: Colors.yellow[900]),
                      ),
                      // color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    width: 5.2,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                    ),
                    child: Icon(
                      Icons.bookmark_outlined,
                      color: Theme.of(context).cardColor,
                    ),
                  ),
                  SizedBox(
                    width: 5.2,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                    ),
                    child: Icon(
                      Icons.share_outlined,
                      color: Theme.of(context).cardColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
