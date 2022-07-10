import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitch/Widgets/app_bar.dart';
import 'package:twitch/Widgets/bottom_bar.dart';
import 'package:twitch/Widgets/score_badge.dart';
import 'package:twitch/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          HomeContent(),
          ThemedAppBar(),
          ThemedBottomBar(),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var gridView = GridView.count(
      childAspectRatio: 1.4,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      crossAxisCount: 2,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: [
        ThemedGameTile(imagePath: 'images/valorant.png'),
        ThemedGameTile(imagePath: 'images/csgo.jpg'),
        ThemedGameTile(imagePath: 'images/fall_guys.webp'),
        ThemedGameTile(imagePath: 'images/warzone.jpg'),
        ThemedGameTile(imagePath: 'images/teamfight_tactics.jpg'),
        ThemedGameTile(imagePath: 'images/battlefield_v.jpg'),
      ],
    );
    var children2 = [
      SizedBox(height: 80),
      ThemedHeader(text: 'League of Legends:\n2020 World Championship'),
      CurrentMatchCard(),
      LoLDescription(),
      ThemedHeader(text: 'Games'),
      Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: gridView,
        height: 384,        
      ),
      SizedBox(height: 80),
    ];
    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: children2,
    );
  }
}

class LoLDescription extends StatelessWidget {
  const LoLDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Opacity(
        opacity: 0.5,
        child: Center(
          child: Text(
            'The League of Legends World Championship is the annual professional League of Legends World Championship tournament',
            style: defaultTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class CurrentMatchCard extends StatelessWidget {
  const CurrentMatchCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Container(
          width: 384,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 56),
                height: 320,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'images/sample_bg.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    ThemeBadge(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('LIVE',
                            style: defaultTextStyle.copyWith(
                                fontSize: 8, letterSpacing: 2)),
                      ),
                      color: Colors.red,
                    ),
                    Spacer(),
                    ThemeBadge(
                      color: Colors.black.withOpacity(0.5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_outline,
                            size: defaultTextStyle.fontSize + 2,
                            color: defaultTextStyle.color,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '23.8k',
                            style: defaultTextStyle.copyWith(
                                fontSize: 8, letterSpacing: 2),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        _CircleWidget(
                          child: Icon(
                            Icons.supervised_user_circle,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '  G2  ',
                          style: defaultTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            _RoundedSquareWidget(
                              child: ThemedHeader(text: '1'),
                            ),
                            SizedBox(width: 6),
                            _RoundedSquareWidget(
                              child: Opacity(
                                opacity: 0.5,
                                child: ThemedHeader(text: '0'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Text(
                          'BO3',
                          style: defaultTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        _CircleWidget(
                          child: Icon(
                            Icons.supervised_user_circle,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Liquid',
                          style: defaultTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CircleWidget extends StatelessWidget {
  final Widget child;

  const _CircleWidget({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        alignment: Alignment.center,
        width: 64,
        height: 64,
        color: Colors.black,
        child: child,
      ),
    );
  }
}

class _RoundedSquareWidget extends StatelessWidget {
  final Widget child;

  const _RoundedSquareWidget({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        alignment: Alignment.center,
        width: 64,
        height: 64,
        color: Colors.grey[900],
        child: child,
      ),
    );
  }
}

class ThemedHeader extends StatelessWidget {
  final String text;
  const ThemedHeader({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Text(
        text,
        style: defaultTextStyle.copyWith(fontSize: 20),
      ),
    );
  }
}

class ThemedGameTile extends StatelessWidget {
  final String imagePath;

  const ThemedGameTile({Key key, this.imagePath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          color: Colors.red,
          padding: const EdgeInsets.only(bottom: 0),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
