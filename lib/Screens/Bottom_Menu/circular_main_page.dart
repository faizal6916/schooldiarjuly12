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

      bottomNavigationBar: BottomNavBar(menuClr: Color(0xfffd5386),menuIndex: 0),
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
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

        child: ListView(
          children: [
            Downloadables(date: '22',month: 'JUN',details: 'summer Vacation &PTM for PT2-CR 108',topic:'summer Vacation &PTM for PT2-CR 108' ,name: 'Principal'),
            SizedBox(
              height: 20,
            ),
            Downloadables(date: '31',month: 'MAY',details: 'Friday Schedule in June 2022-CR 096',topic:'Friday Schedule in June 2022-CR 096' ,name: 'Principal',),
            SizedBox(
              height: 20,
            ),
            Downloadables(date: '26',month: 'MAY',details: 'CR 092 Summer Break and PT2 Exam',topic:'CR 092 Summer Break and PT2 Exam' ,name: 'Principal',),
            SizedBox(
              height: 20,
            ),
            Downloadables(date: '24',month: 'MAY',details: 'CR 089 Virtual Open House',topic:'CR 089 Virtual Open House' ,name: 'Principal',),
            SizedBox(
              height: 20,
            ),
            Downloadables(date: '23',month: 'MAY',details: 'Books and Uniform',topic:'CR 086' ,name: 'Principal',),
            SizedBox(
              height: 20,
            ),
            Downloadables(date: '9',month: 'MAY',details: 'Circular-081-Golden Cosmos Transport',topic:'CR 081' ,name: 'Principal',),
            SizedBox(
              height: 20,
            ),
            Downloadables(date: '27',month: 'APR',details: 'CR 081 Eid holidays',topic:'CR 081 Eid holidays' ,name: 'Principal',),
            SizedBox(
              height: 20,
            ),
            Downloadables(date: '16',month: 'APR',details: 'IMPORTANT CIRCULAR',topic:'IMPORTANT CIRCULAR' ,name: 'Principal',),
            SizedBox(
              height: 20,
            ),
            Downloadables(date: '16',month: 'APR',details: 'CR 078-BOOKS AND UNIFORM SALE',topic:'CR 078' ,name: 'Principal',),
            SizedBox(
              height: 20,
            ),
            Downloadables(date: '16',month: 'APR',details: 'CR 079-SCHOOL DIARY APP',topic:'CR 079' ,name: 'Principal',),
            SizedBox(
              height: 20,
            ),
            Downloadables(date: '16',month: 'APR',details: 'CR 077',topic:'TERM II-BOARD EXAMINATION CENTRE FOR GRADE X &GRADE XII' ,name: 'Principal',),
          ],
        ),
      ),
    );
  }
}
