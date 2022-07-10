import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:twitch/Widgets/profile_badge.dart';
import 'package:twitch/Widgets/score_badge.dart';
import 'package:twitch/Widgets/twitch_icon.dart';
import 'package:twitch/constants.dart';

class ThemedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: Container(
            color: backgroundColor.withOpacity(0.8),
            child: SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
              children: [
                  ThemedTwitchIcon(),
                  Spacer(),
                  ThemedScoreBadge(),
                  SizedBox(width: 12),
                  ThemedProfileBadge(),
              ],
            ),
                )),
          ),
        ),
      ),
    );
  }
}

