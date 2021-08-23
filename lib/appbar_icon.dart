import 'package:flutter/material.dart';

class AppbarIcon extends StatelessWidget {

  final Function() onPressed;
  final Widget icon;

  AppbarIcon(this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: icon);
  }
}
