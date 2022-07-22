import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/bottomNavBar.dart';
import '../../Widgets/customAppbar.dart';
import '../../Widgets/downloadables.dart';
import '../../Widgets/sideBar.dart';
import '../notifications.dart';

class AssignmentMainScreen extends StatefulWidget {
  const AssignmentMainScreen({Key? key}) : super(key: key);

  @override
  State<AssignmentMainScreen> createState() => _AssignmentMainScreenState();
}

class _AssignmentMainScreenState extends State<AssignmentMainScreen> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: NotificationScreen(),
      bottomNavigationBar: BottomNavBar(
          menuClr: Color(0xffaddcff),
          menuIndex: 1,
          secndClr: Color(0xffeaf6ff),
          icnClr: Color(0xff5558ff)),
      drawer: SideBar(),
      key: _key,
      appBar: CustomAppBar(
        title: 'Circular',
        globalKey: _key,
        name: false,
        appHeight: 100,
      ),
      body: Container(
        width: 1.sw,
        height: 1.sh - 220,
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Downloadables(
                date: '1',
                month: 'JUL',
                details: 'Grade 6 Summer Vacation Homework',
                topic: 'Dear Students, '
                    'Please find the attachment Enjoy your holidays and spend an hour every day to complete the homework',
                name: 'RUPA SURENDRAN'),
            Downloadables(
              date: '15',
              month: 'APR',
              details: 'Weekly Update',
              topic: 'Weekly Update',
              name: 'IRAM SHAHALAM QURAISHI',
            )
          ],
        ),
      ),
    );
  }
}
