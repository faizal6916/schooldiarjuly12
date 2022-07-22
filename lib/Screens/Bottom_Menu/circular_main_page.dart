import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_diary2022/Widgets/downloadables.dart';

import '../../Widgets/bottomNavBar.dart';
import '../../Widgets/customAppbar.dart';
import '../../Widgets/sideBar.dart';

class CircularMainScreen extends StatefulWidget {
  const CircularMainScreen({Key? key}) : super(key: key);

  @override
  State<CircularMainScreen> createState() => _CircularMainScreenState();
}

class _CircularMainScreenState extends State<CircularMainScreen> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavBar(menuClr: Color(0xffffc8d1), menuIndex: 0,secndClr: Color(0xfffff6f7),icnClr: Color(0xfffd3a84)),
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
        //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Downloadables(
              date: '22',
              month: 'JUN',
              details: 'summer Vacation &PTM for PT2-CR 108',
              topic: 'summer Vacation &PTM for PT2-CR 108',
              name: 'Principal',
            ),
            Downloadables(
              date: '22',
              month: 'JUN',
              details: 'summer Vacation &PTM for PT2-CR 108',
              topic: 'summer Vacation &PTM for PT2-CR 108',
              name: 'Principal',
            ),
            Downloadables(
              date: '22',
              month: 'JUN',
              details: 'summer Vacation &PTM for PT2-CR 108',
              topic: 'summer Vacation &PTM for PT2-CR 108',
              name: 'Principal',
            ),
            Downloadables(
              date: '22',
              month: 'JUN',
              details: 'summer Vacation &PTM for PT2-CR 108',
              topic: 'summer Vacation &PTM for PT2-CR 108',
              name: 'Principal',
            ),
          ],
        ),
      ),
    );
  }
}
