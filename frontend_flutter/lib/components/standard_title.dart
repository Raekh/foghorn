import 'package:flutter/material.dart';

import '../constants.dart';


class StandardTitle extends StatelessWidget {
  const StandardTitle({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20),
      child: Text(
        title,
        style: kLightTitleStyle.copyWith(fontSize: 20),
      ),
    );
  }
}
