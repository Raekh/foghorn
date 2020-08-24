import 'dart:math';

import 'package:flutter/material.dart';
import 'package:frontend_flutter/components/standard_title.dart';
import 'package:frontend_flutter/constants.dart';
import 'package:frontend_flutter/screens/party/party_screen.dart';

class GameBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int maxPlayers = 5;
    int currentPlayers = 3;
    double percentage = currentPlayers / maxPlayers;
    var partyList = [
      {
        "partyName": "canToGive",
        "currentPlayers": currentPlayers,
        "maxPlayers": maxPlayers,
        "percentage": percentage
      },
    ];

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
              itemCount: partyList.length,
              itemBuilder: (context, index) {
                var partyItem = partyList[index];
                return Party(
                  percentage: partyItem['percentage'],
                  partyName: partyItem['partyName'],
                  currentPlayers: partyItem['currentPlayers'],
                  maxPlayers: partyItem['maxPlayers'],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class Party extends StatelessWidget {
  const Party({
    Key key,
    @required this.percentage,
    this.partyName,
    this.currentPlayers,
    this.maxPlayers,
  }) : super(key: key);

  final String partyName;
  final int currentPlayers;
  final int maxPlayers;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Container(
        height: 50,
        width: 200,
        // color: Colors.red[400],
        child: Row(
          children: [
            Container(
              height: 100,
              width: 300,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(partyName,
                              style: kLightTitleStyle.copyWith(fontSize: 16)),
                          Text('13 min ago',
                              style: kLightTitleStyle.copyWith(
                                  color: kLightGrey.withOpacity(0.9)))
                        ],
                      ),
                    ),
                    Text(
                      '$currentPlayers/$maxPlayers',
                      style: kLightTitleStyle.copyWith(fontSize: 28),
                    ),
                  ],
                ),
              ),
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
            Spacer(),
            SizedBox(
              height: 70,
              child: FlatButton(
                child: Text('Join'),
                color: Colors.red[400],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return new PartyScreen();
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
