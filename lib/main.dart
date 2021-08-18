import 'package:a_web/dashboard/dash_board.dart';
import 'package:flutter/material.dart';

import 'calender/calender_space.dart';
import 'navigationBar/navigation_bar.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            NavigationBar(),
            DashBoard(),
            CalenderSpace(),
          ],
        ),
      ),
    );
  }
}
