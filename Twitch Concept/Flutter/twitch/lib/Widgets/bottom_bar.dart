import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:twitch/Widgets/twitch_icon.dart';
import 'package:twitch/constants.dart';

class ThemedBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: Container(
            color: backgroundColor.withOpacity(0.8),
            child: SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ThemedTwitchIcon(
                        child: Icon(
                          Icons.grid_on,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      ThemedTwitchIcon(
                        child: Icon(
                          Icons.favorite_outline,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      ThemedTwitchIcon(),
                      ThemedTwitchIcon(
                        child: Icon(
                          Icons.search_outlined,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      ThemedTwitchIcon(
                        child: Icon(
                          Icons.menu,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
