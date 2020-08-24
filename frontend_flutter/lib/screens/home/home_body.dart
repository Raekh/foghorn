import 'package:flutter/material.dart';
import 'package:frontend_flutter/components/standard_title.dart';
import 'package:frontend_flutter/constants.dart';
import 'package:frontend_flutter/screens/game/game_screen.dart';

import 'components/game_card.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StandardTitle(title: "Games"),
                    SizedBox(height: 20),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        // physics: RangeMaintainingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return GameCard(
                            name: "Valorant",
                          );
                        },
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
