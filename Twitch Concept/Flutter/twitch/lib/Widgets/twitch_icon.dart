import 'package:flutter/material.dart';

class ThemedTwitchIcon extends StatelessWidget {
  final String iconPath;
  final Widget child;

  const ThemedTwitchIcon(
      {Key key, this.iconPath = 'images/twitch.png', this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      padding: const EdgeInsets.all(4.0),
      child: child ?? Image.asset(iconPath),
    );
  }
}
