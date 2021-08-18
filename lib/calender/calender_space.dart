import 'package:a_web/calender/top_container.dart';
import 'package:flutter/material.dart';

import 'calender_section.dart';
import 'meeting_section.dart';

class CalenderSpace extends StatelessWidget {
  const CalenderSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Container(
            color: Color(0xffF7F7FF),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.28,
            child: Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                TopContainer(),
                CalendarSection(),
                MeetingSection(),
                // ClipRRect(
                //   child: Image.network(
                //     'https://bit.ly/3sCmkky',
                //     height: 300.0,
                //     width: 400.0,
                //   ),
                // ),
              ],
            )));
  }
}
