import 'package:a_web/navigationBar/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'company_name.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 100.0,
        color: Colors.blueGrey,
        child: Stack(
          children: [
            CompanyName(),
            Align(
              alignment: Alignment.center,
              child: NavBar(),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: NavBarItem(
                icon: Feather.log_out,
                active: false,
                touched: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
