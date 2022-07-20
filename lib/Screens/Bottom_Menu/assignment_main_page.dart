import 'package:flutter/material.dart';

import '../../Widgets/bottomNavBar.dart';
import '../../Widgets/customAppbar.dart';
import '../../Widgets/sideBar.dart';
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
      bottomNavigationBar: BottomNavBar(menuClr: Color(0xff4966ff),menuIndex: 1,),
      drawer: SideBar(),
      key: _key,
      appBar: CustomAppBar(
        title: 'Assignments',
        globalKey: _key,
        name: false,
        appHeight: 100,
      ),
      body: Text('Assignment'),
    );
  }
}
