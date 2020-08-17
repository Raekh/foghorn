import 'package:flutter/material.dart';

import 'custom_search_bar.dart';

// import 'dashboard_title.dart';

class DashboardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomSearchBar(size: size);
  }
}
