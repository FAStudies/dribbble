import 'package:flutter/material.dart';

class ThemedProfileBadge extends StatelessWidget {
  final String iconPath;

  const ThemedProfileBadge({Key key, this.iconPath = 'images/user.png'})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipOval(
          child: Container(
            color: Colors.purple,
            width: 32,
            height: 32,
            child: Image.asset(iconPath),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
