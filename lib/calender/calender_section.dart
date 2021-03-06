import 'package:flutter/material.dart';

import 'calender_pellet.dart';

class CalendarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 30.0, left: 30.0, top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'oct 2019',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.0,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 18.0,
                      width: 18.0,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.chevron_left,
                          size: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      height: 18.0,
                      width: 18.0,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.chevron_right,
                          size: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 25.0, top: 15.0, right: 25.0, bottom: 25.0),
            child: Row(
              children: dates
                  .map(
                    (e) => CalendarPellet(
                      date: e,
                      day: days[dates.indexOf(e)],
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
