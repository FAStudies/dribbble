import 'package:flutter/material.dart';
import 'package:twitch/constants.dart';

class ThemedScoreBadge extends StatelessWidget {
  final String iconPath;

  const ThemedScoreBadge({Key key, this.iconPath = 'images/diamond.png'})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ThemeBadge(
      color:  Color(0xEECCFF).withOpacity(0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            scale: 0.5,
          ),
          SizedBox(width: 4),
          Text(
            '200',
            style: defaultTextStyle,
          ),
          SizedBox(width: 4),
        ],
      ),
    );
  }
}

class ThemeBadge extends StatelessWidget {
  final Widget child;
  final Color color;

  const ThemeBadge({Key key, this.child, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(500),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
        child: child,
      ),
    );
  }
}

