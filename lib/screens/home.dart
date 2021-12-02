import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery/widgets/compose.dart';
import 'package:grocery/widgets/popular.dart';
import 'package:grocery/widgets/popular2.dart';
import 'package:grocery/widgets/promo.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // لجعل العنوان بالمنتصف
        title: const Text('RECIPE APP'),
        elevation: 0,
        actions: [
          Container(
            padding: const EdgeInsetsDirectional.only(
              end: 5.3,
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.jpg'),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Promo recipe",
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Promo('soup', 'soup with mashroms',
                        'assets/images/Recipe_2.png'),
                    Promo(
                        'Food', 'Food with mashroms', 'assets/images/Food.png'),
                    Promo('soup', 'soup with mashroms',
                        'assets/images/Recipe_2.png'),
                    Promo(
                        'Food', 'Food with mashroms', 'assets/images/Food.png'),
                    Promo('soup', 'soup with mashroms',
                        'assets/images/Recipe_2.png'),
                    Promo(
                        'Food', 'Food with mashroms', 'assets/images/Food.png'),
                    Promo('soup', 'soup with mashroms',
                        'assets/images/Recipe_2.png'),
                    Promo(
                        'Food', 'Food with mashroms', 'assets/images/Food.png'),
                    Promo('soup', 'soup with mashroms',
                        'assets/images/Recipe_2.png'),
                    Promo(
                        'Food', 'Food with mashroms', 'assets/images/Food.png'),
                    Promo('soup', 'soup with mashroms',
                        'assets/images/Recipe_2.png'),
                    Promo(
                        'Food', 'Food with mashroms', 'assets/images/Food.png'),
                    Promo('soup', 'soup with mashroms',
                        'assets/images/Recipe_2.png'),
                    Promo(
                        'Food', 'Food with mashroms', 'assets/images/Food.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          child: Column(
                            children: [
                              IconButton(
                                color: Theme.of(context).cardColor,
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.carrot),
                              ),
                              Text("vege"),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Column(
                            children: [
                              IconButton(
                                color: Theme.of(context).cardColor,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.lunch_dining_outlined,
                                ),
                              ),
                              Text("vege"),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Column(
                            children: [
                              IconButton(
                                color: Theme.of(context).cardColor,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.local_bar_outlined,
                                ),
                              ),
                              Text("vege"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          child: Column(
                            children: [
                              IconButton(
                                color: Theme.of(context).cardColor,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.restaurant_outlined,
                                ),
                              ),
                              Text("vege"),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Column(
                            children: [
                              IconButton(
                                color: Theme.of(context).cardColor,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.icecream_outlined,
                                ),
                              ),
                              Text("vege"),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Column(
                            children: [
                              IconButton(
                                color: Theme.of(context).cardColor,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.bakery_dining_outlined,
                                ),
                              ),
                              Text("vege"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Compose(),
              // Popular recipes here ..
              // SingleChildScrollView(
              //     scrollDirection: Axis.horizontal,
              //     child: Container(
              //       padding: EdgeInsets.only(left: 11.4),
              //       margin: EdgeInsets.all(10),
              //       child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Popular recipes",
              //               style: Theme.of(context).textTheme.headline6,
              //             ),
              //             Popular(),
              //             // Popular2(),
              //             Popular(),
              //             // Popular2(),
              //           ]),
              //     )),
              // Here's popular recipe ends ..

              // here's new one
              Container(
                margin: EdgeInsets.only(top: 14),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Text(
                      "Popular recipes",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    // Content
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: 3,
                      physics: NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 16);
                      },
                      itemBuilder: (context, index) {
                        return Popular2();
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
