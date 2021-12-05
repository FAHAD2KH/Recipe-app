import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery/widgets/bottom_nav.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  _AppSettingsState createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: EdgeInsets.only(top: 30),
        child: SizedBox(
          height: 58,
          width: 58,
          child: FloatingActionButton(
            child: SvgPicture.asset(
              'assets/icon/search.svg',
              width: 22,
              height: 20,
            ),
            onPressed: () {},
            backgroundColor: Theme.of(context).primaryColor,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
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
      body: Text('This is App Settings Page'),
    );
  }
}
