import 'package:flutter/material.dart';
import 'package:frontend_flutter/components/standard_title.dart';
import 'package:frontend_flutter/constants.dart';

class PartyBody extends StatelessWidget {
  const PartyBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StandardTitle(
            title: "Members",
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 60,
                        child: ClipRRect(
                          clipBehavior: Clip.antiAlias,
                          borderRadius: BorderRadius.circular(60),
                          child: Image(
                            image: AssetImage("assets/images/valorant.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Toy',
                        style: kLightTitleStyle,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          StandardTitle(
            title: "Actions",
          ),
          SizedBox(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80,
                      child: ClipRRect(
                        clipBehavior: Clip.antiAlias,
                        borderRadius: BorderRadius.circular(60),
                        child: Image(
                          image: AssetImage("assets/images/valorant.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Ping members',
                      style: kLightTitleStyle,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80,
                      child: ClipRRect(
                        clipBehavior: Clip.antiAlias,
                        borderRadius: BorderRadius.circular(60),
                        child: Image(
                          image: AssetImage("assets/images/valorant.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Call others',
                      style: kLightTitleStyle,
                    )
                  ],
                )
              ],
            ),
          ),
          Center(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                child: Text('Leave'),
                color: Colors.red[400],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
