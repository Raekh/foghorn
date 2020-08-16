import 'package:flutter/material.dart';
import 'package:frontend_flutter/screens/dashboard/components/dashboard_body.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: DashboardBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 60,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () {
          print('menu');
        },
      ),
      // backgroundColor: LinearGradient(),
    );
  }
}
