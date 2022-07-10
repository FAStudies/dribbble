import 'package:flutter/material.dart';

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
