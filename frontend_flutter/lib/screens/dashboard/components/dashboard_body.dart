import 'package:flutter/material.dart';

// import 'dashboard_title.dart';

class DashboardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: size.height,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.sp,
                children: [
                  SizedBox(
                    height: 50,
                    width: size.width * 0.6,
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: TextStyle(color: Colors.black),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          // Spacer(),
                          IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[100],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[100],
                    ),
                    child: IconButton(
                      icon: Icon(Icons.filter_none),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            )
            // DashboardTitle(title: "Games"),
            // SizedBox(height: 300, child: Text('test'))
          ],
        ),
      ),
    );
  }
}
