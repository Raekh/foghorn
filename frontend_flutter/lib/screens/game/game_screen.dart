import 'package:flutter/material.dart';
import 'package:frontend_flutter/constants.dart';

import 'game_body.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildAppBar(context),
      body: GameBody(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Valorant', style: kLightTitleStyle),
          SizedBox(width: 20),
          SizedBox(
            height: 30,
            child: Hero(
              tag: 'game_valorant',
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
        ],
      ),
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: BackButton(
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
