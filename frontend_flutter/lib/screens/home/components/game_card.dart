import 'package:flutter/material.dart';
import 'package:frontend_flutter/screens/game/game_screen.dart';

import '../../../constants.dart';

class GameCard extends StatelessWidget {
  const GameCard({
    Key key,
    this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    String lowercaseName = name.toLowerCase();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[700],
          borderRadius: BorderRadius.circular(60),
        ),
        width: 110,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return new GameScreen();
                      },
                    ),
                  );
                },
                child: Hero(
                  tag: 'game_$lowercaseName',
                  child: ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(60),
                    child: Image(
                      image: AssetImage("assets/images/valorant.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              'Valorant',
              style: kTitleStyle.copyWith(color: kLightBackgroundColor),
            ),
          ],
        ),
      ),
    );
  }
}
