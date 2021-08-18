import 'package:a_web/screen/ProjectProgressCard.dart';
import 'package:a_web/screen/Project_statistics.dart';
import 'package:a_web/screen/shared_files_item.darrt.dart';
import 'package:a_web/screen/sub_header.dart';
import 'package:a_web/screen/tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.63,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30.0, top: 25.0, bottom: 10.0),
              child: Text(
                'Ongoing project',
                style: GoogleFonts.quicksand(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Tabs(),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              height: 200.0,
              width: MediaQuery.of(context).size.width * 0.62,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProjectProgressCard(
                    color: Color(0xffFF4C60),
                    projectName: 'The Maptrix',
                    percentComplete: '34%',
                    progressIndicatorColor: Colors.redAccent,
                    icon: Feather.moon,
                  ),
                  ProjectProgressCard(
                    color: Color(0xff6C6CE5),
                    projectName: 'Delivery club',
                    percentComplete: '78%',
                    progressIndicatorColor: Colors.blue.shade200,
                    icon: Feather.truck,
                  ),
                  ProjectProgressCard(
                    color: Color(0xffFAAA1E),
                    projectName: 'Travel comrode',
                    percentComplete: '82%',
                    progressIndicatorColor: Colors.amber.shade200,
                    icon: Icons.local_airport,
                  ),
                ],
              ),
            ),
            SubHeader(
              title: 'Shared Files',
            ),
            SharedFilesItem(
              color: Colors.blue,
              sharedFileName: 'Company Guidelines',
              members: '28 members',
              et: '10 oct 2019',
              fileSize: '2.3 MB',
            ),
            SharedFilesItem(
              color: Colors.green,
              sharedFileName: 'Company policy',
              members: '15members',
              et: '14 oct 2019',
              fileSize: '5.3 MB',
            ),
            SharedFilesItem(
              color: Colors.amber,
              sharedFileName: 'Wireframes',
              members: '30 members',
              et: '27 oct 2019',
              fileSize: '4.3 MB',
            ),
            SubHeader(
              title: 'Project statistics',
            ),
            ProjectStatisticsCards(),
          ],
        ),
      ),
    );
  }
}
