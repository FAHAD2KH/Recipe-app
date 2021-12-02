import 'package:flutter/material.dart';

class HomeIcons extends StatelessWidget {
  // const HomeIcons({Key? key}) : super(key: key);
  HomeIcons(this.icon, this.title, this.onPressed);
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          color: Theme.of(context).colorScheme.primary,
          onPressed: this.onPressed,
          icon: Icon(
            this.icon,
          ),
        ),
        Text(this.title),
      ],
    );
  }
}
