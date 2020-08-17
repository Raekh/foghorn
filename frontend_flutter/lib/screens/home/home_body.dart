import 'package:flutter/material.dart';
import 'package:frontend_flutter/constants.dart';

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
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        'Games',
                        style: kLightTitleStyle.copyWith(fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
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
                                    child: Draggable(
                                      feedback: SizedBox(
                                        width: 100,
                                        child: ClipRRect(
                                          clipBehavior: Clip.antiAlias,
                                          borderRadius:
                                              BorderRadius.circular(60),
                                          child: Image(
                                            image: AssetImage(
                                                "assets/images/valorant.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      axis: Axis.vertical,
                                      dragAnchor: DragAnchor.child,
                                      maxSimultaneousDrags: 1,
                                      feedbackOffset: Offset(0, 10),
                                      childWhenDragging: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: kBackgroundColor,
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        clipBehavior: Clip.antiAlias,
                                        borderRadius: BorderRadius.circular(60),
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/valorant.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
