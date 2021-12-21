import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery/screens/app_settings.dart';
import 'package:grocery/screens/bookmark.dart';
import 'package:grocery/screens/created_recipes.dart';
import 'package:grocery/screens/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTab = 0; // لنعرف ماهي الايقونه التي تم اختيارها
  final List<Widget> screens = [
    Home(),
    CreatedRecipes(),
    Bookmarks(),
    AppSettings(),
  ]; // to store nested tabs
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
//  Todo #1 Make smooth animation when navagating
    return Container(
      padding: EdgeInsets.all(14),
      height: 60,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MaterialButton(
                minWidth: 80,
                onPressed: () {
                  setState(() {
                    currentScreen =
                        Home(); // هنا إذا تم الضضغط على الايقونه نعرف شو الايقونه اللي انضغطت ونسوي اللي بدنا ياه
                    currentTab = 0;
                  });
                  // عند الضغط يتم النقل على حسب ايقونه الصفحه
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/icon/home.svg',
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 80,
                onPressed: () {
                  setState(() {
                    currentScreen =
                    CreatedRecipes();
                    currentTab = 1;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreatedRecipes()),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/icon/special.svg',
                    ),
                  ],
                ),
              )
            ],
          ),

          //الجهه اليمنى من البار هنا

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MaterialButton(
                minWidth: 80,
                onPressed: () {
                  setState(() {
                    currentScreen =
                        Bookmarks();
                    currentTab = 2;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bookmarks()),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.bookmark_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 80,
                onPressed: () {
                  setState(() {
                    currentScreen =
                    AppSettings();
                    currentTab = 3;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppSettings()),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.settings_outlined,
                        color: Theme.of(context).primaryColor),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
