import 'package:flutter/material.dart';

import '../../Widgets/bottomNavBar.dart';
import '../../Widgets/customAppbar.dart';
import '../../Widgets/sideBar.dart';

class CalendarMainScreen extends StatefulWidget {
  const CalendarMainScreen({Key? key}) : super(key: key);

  @override
  State<CalendarMainScreen> createState() => _CalendarMainScreenState();
}

class _CalendarMainScreenState extends State<CalendarMainScreen> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(menuClr: Color(0xffbb49ff),menuIndex: 2,),
      drawer: SideBar(),
      key: _key,
      appBar: CustomAppBar(
        title: 'Calendar',
        globalKey: _key,
        name: false,
        appHeight: 100,
      ),
      body: Text('Calendar'),
    );
  }
}
