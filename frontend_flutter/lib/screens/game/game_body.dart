import 'dart:math';

import 'package:flutter/material.dart';
import 'package:frontend_flutter/constants.dart';
import 'package:frontend_flutter/screens/home/home_body.dart';

class GameBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int maxPlayers = 5;
    int currentPlayers = 3;
    double percentage = currentPlayers / maxPlayers;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StandardTitle(title: "Parties"),
          SizedBox(height: 20),
          Container(
            // height: 300,
            height: MediaQuery.of(context).size.height - 300,
            width: double.infinity,
            // color: Colors.red,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Container(
                    height: 70,
                    width: 200,
                    // color: Colors.red[400],
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              kGrey,
                              kGrey,
                              kLightGrey,
                              kLightGrey,
                            ], stops: [
                              0,
                              percentage,
                              percentage,
                              1
                            ]),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        FlatButton(
                          child: Text('Join'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {
                            print(currentPlayers);
                            currentPlayers =
                                min(currentPlayers + 1, maxPlayers);
                            print(currentPlayers);
                          },
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
