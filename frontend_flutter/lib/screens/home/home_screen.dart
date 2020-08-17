import 'package:flutter/material.dart';
import 'package:frontend_flutter/constants.dart';

import 'home_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildAppBar(),
      body: HomeBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('FogHorn', style: kLightTitleStyle),
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        splashRadius: 20,
        icon: Icon(
          Icons.menu,
          color: kLightBackgroundColor,
        ),
        onPressed: () {
          print('menu');
        },
      ),
    );
  }
}
