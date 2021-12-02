import 'package:flutter/material.dart';
import 'appTheme.dart';
import 'home.dart';
import 'popular2.dart';

void main() {
  runApp(const Grocery());
}

class Grocery extends StatelessWidget {
  const Grocery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Apptheme.light();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: 'Recipe App',
      home: Home(),
    );
  }
}
